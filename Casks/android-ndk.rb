cask 'android-ndk' do
  version '17'
  sha256 '0ccd8fbbd987932f846c76a1a0c8402925461feb161ead353339c508ab3bf1f5'

  # dl.google.com/android/repository/android-ndk was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin-x86_64.zip"
  name 'Android NDK'
  homepage 'https://developer.android.com/ndk/index.html'

  conflicts_with cask: 'crystax-ndk'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/ndk_exec.sh"
  preflight do
    FileUtils.ln_sf("#{staged_path}/android-ndk-r#{version}", "#{HOMEBREW_PREFIX}/share/android-ndk")

    IO.write shimscript, <<~EOS
      #!/bin/bash
      readonly executable="#{staged_path}/android-ndk-r#{version}/$(basename ${0})"
      test -f "${executable}" && exec "${executable}" "${@}"
    EOS
  end

  [
    'ndk-build',
    'ndk-depends',
    'ndk-gdb',
    'ndk-stack',
    'ndk-which',
  ].each { |link_name| binary shimscript, target: link_name }

  uninstall_postflight do
    FileUtils.rm("#{HOMEBREW_PREFIX}/share/android-ndk")
  end

  caveats <<~EOS
    You may want to add to your profile:
       'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/android-ndk"'
  EOS
end
