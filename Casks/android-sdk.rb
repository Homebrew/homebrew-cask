cask 'android-sdk' do
  version '3859397,26.0.2'
  sha256 '4a81754a760fce88cba74d69c364b05b31c53d57b26f9f82355c61d5fe4b9df9'

  # dl.google.com/android/repository was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/sdk-tools-darwin-#{version.before_comma}.zip"
  name 'android-sdk'
  homepage 'https://developer.android.com/index.html'

  conflicts_with cask: 'android-platform-tools'

  binary "#{staged_path}/build-tools/#{version.after_comma}/aapt"
  binary "#{staged_path}/build-tools/#{version.after_comma}/aapt2"
  binary "#{staged_path}/build-tools/#{version.after_comma}/aarch64-linux-android-ld"
  binary "#{staged_path}/build-tools/#{version.after_comma}/aidl"
  binary "#{staged_path}/build-tools/#{version.after_comma}/arm-linux-androideabi-ld"
  binary "#{staged_path}/build-tools/#{version.after_comma}/bcc_compat"
  binary "#{staged_path}/build-tools/#{version.after_comma}/dexdump"
  binary "#{staged_path}/build-tools/#{version.after_comma}/dx"
  binary "#{staged_path}/build-tools/#{version.after_comma}/i686-linux-android-ld"
  binary "#{staged_path}/build-tools/#{version.after_comma}/llvm-rs-cc"
  binary "#{staged_path}/build-tools/#{version.after_comma}/mainDexClasses"
  binary "#{staged_path}/build-tools/#{version.after_comma}/mipsel-linux-android-ld"
  binary "#{staged_path}/build-tools/#{version.after_comma}/split-select"
  binary "#{staged_path}/build-tools/#{version.after_comma}/x86_64-linux-android-ld"
  binary "#{staged_path}/build-tools/#{version.after_comma}/zipalign"
  binary "#{staged_path}/emulator/bin64/e2fsck"
  binary "#{staged_path}/emulator/bin64/fsck.ext4"
  binary "#{staged_path}/emulator/bin64/mkfs.ext4"
  binary "#{staged_path}/emulator/bin64/resize2fs"
  binary "#{staged_path}/emulator/bin64/tune2fs"
  binary "#{staged_path}/emulator/emulator"
  binary "#{staged_path}/emulator/emulator-check"
  binary "#{staged_path}/emulator/emulator64-arm"
  binary "#{staged_path}/emulator/emulator64-crash-service"
  binary "#{staged_path}/emulator/emulator64-mips"
  binary "#{staged_path}/emulator/emulator64-x86"
  binary "#{staged_path}/emulator/mksdcard"
  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/systrace/systrace.py"
  binary "#{staged_path}/tools/android"
  binary "#{staged_path}/tools/bin/archquery"
  binary "#{staged_path}/tools/bin/avdmanager"
  binary "#{staged_path}/tools/bin/jobb"
  binary "#{staged_path}/tools/bin/lint"
  binary "#{staged_path}/tools/bin/monkeyrunner"
  binary "#{staged_path}/tools/bin/screenshot2"
  binary "#{staged_path}/tools/bin/sdkmanager"
  binary "#{staged_path}/tools/bin/uiautomatorviewer"
  binary "#{staged_path}/tools/mksdcard"
  binary "#{staged_path}/tools/monitor"

  preflight do
    system_command "#{staged_path}/tools/bin/sdkmanager", args: ['tools', 'platform-tools', "build-tools;#{version.after_comma}"], input: 'y'
  end

  postflight do
    FileUtils.ln_sf(staged_path.to_s, "#{HOMEBREW_PREFIX}/share/android-sdk")
  end

  uninstall_postflight do
    FileUtils.rm("#{HOMEBREW_PREFIX}/share/android-sdk")
  end

  caveats do
    depends_on_java('8')
    <<~EOS
      We will install android-sdk-tools, platform-tools, and build-tools for you.
      You can control android sdk packages via the sdkmanager command.
      You may want to add to your profile:
        'export ANDROID_SDK_ROOT=#{HOMEBREW_PREFIX}/share/android-sdk'

      This operation may take up to 10 minutes depending on your internet connection.
      Please, be patient.
    EOS
  end
end
