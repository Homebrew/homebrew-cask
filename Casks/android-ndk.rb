cask 'android-ndk' do
  version '14b'
  sha256 'f5373dcb8ddc1ba8a4ccee864cba2cbdf500b2a32d6497378dfd32b375a8e6fa'

  # dl.google.com/android/repository/android-ndk was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin-x86_64.zip"
  name 'Android NDK'
  homepage 'https://developer.android.com/ndk/'

  conflicts_with cask: 'crystax-ndk'

  stage_only true

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/ndk_exec.sh"
  preflight do
    FileUtils.rm_rf ["#{HOMEBREW_PREFIX}/opt/android-ndk"]

    File.symlink(staged_path.to_s, "#{HOMEBREW_PREFIX}/opt/android-ndk")
    IO.write shimscript, <<-EOS.undent
     #!/bin/sh
      BASENAME=`basename $0`
      EXEC="#{staged_path}/android-ndk-r#{version}/$BASENAME"
      test -f "$EXEC" && exec "$EXEC" "$@"
    EOS
    set_permissions shimscript, '+x'
  end

  %w[ndk-build
     ndk-depends
     ndk-gdb
     ndk-stack
     ndk-which].each { |link_name| binary shimscript, target: link_name }

  caveats <<-EOS.undent
   You may want to add to your profile:
      'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/opt/android-ndk"'
  EOS
end
