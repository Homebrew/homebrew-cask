cask 'crystax-ndk' do
  version '10.3.1'
  sha256 '6469c37e8fa107db51f9ada26fe3e27fddf3d6c3c51272a783fed36b110550ef'

  url "https://www.crystax.net/download/crystax-ndk-#{version}-darwin-x86_64.tar.xz"
  name 'Crystax NDK'
  homepage 'https://www.crystax.net/android/ndk'

  conflicts_with cask: 'android-ndk'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/ndk_exec.sh"
  preflight do
    FileUtils.ln(staged_path.to_s, "#{HOMEBREW_PREFIX}/opt/crystax-ndk", force: true)

    IO.write shimscript, <<-EOS.undent
      #!/bin/bash
      readonly executable="#{staged_path}/crystax-ndk-r#{version}/$(basename ${0})"
      test -f "${executable}" && exec "${executable}" "${@}"
    EOS
    set_permissions shimscript, '+x'
  end

  %w[
    ndk-build
    ndk-depends
    ndk-gdb
    ndk-stack
    ndk-which
  ].each { |link_name| binary shimscript, target: link_name }

  caveats <<-EOS.undent
   You may want to add to your profile:
      'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/opt/crystax-ndk"'
  EOS
end
