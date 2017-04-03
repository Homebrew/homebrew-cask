cask 'android-sdk' do
  version '25.2.3'
  sha256 '593544d4ca7ab162705d0032fb0c0c88e75bd0f42412d09a1e8daa3394681dc6'

  # google.com/android/repository/tools_r was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/tools_r#{version}-macosx.zip"
  name 'android-sdk'
  homepage 'https://developer.android.com/index.html'

  conflicts_with cask: 'android-platform-tools'

  build_tools_version = '25.0.2'

  binary "#{staged_path}/build-tools/#{build_tools_version}/aapt"
  binary "#{staged_path}/build-tools/#{build_tools_version}/aapt2"
  binary "#{staged_path}/build-tools/#{build_tools_version}/aidl"
  binary "#{staged_path}/build-tools/#{build_tools_version}/apksigner"
  binary "#{staged_path}/build-tools/#{build_tools_version}/dexdump"
  binary "#{staged_path}/build-tools/#{build_tools_version}/dx"
  binary "#{staged_path}/build-tools/#{build_tools_version}/llvm-rs-cc"
  binary "#{staged_path}/build-tools/#{build_tools_version}/zipalign"
  binary "#{staged_path}/emulator/emulator"
  binary "#{staged_path}/emulator/emulator-check"
  binary "#{staged_path}/emulator/emulator64-arm"
  binary "#{staged_path}/emulator/emulator64-mips"
  binary "#{staged_path}/emulator/emulator64-x86"
  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/sqlite3"
  binary "#{staged_path}/tools/android"
  binary "#{staged_path}/tools/bin/avdmanager"
  binary "#{staged_path}/tools/bin/lint"
  binary "#{staged_path}/tools/bin/monkeyrunner"
  binary "#{staged_path}/tools/bin/sdkmanager"
  binary "#{staged_path}/tools/mksdcard"
  binary "#{staged_path}/tools/monitor"

  preflight do
    system_command "#{staged_path}/tools/bin/sdkmanager", args: ['tools', 'platform-tools', "build-tools;#{build_tools_version}"], input: 'y'
  end

  postflight do
    FileUtils.ln_sf(staged_path.to_s, "#{HOMEBREW_PREFIX}/share/android-sdk")
  end

  uninstall_postflight do
    FileUtils.rm("#{HOMEBREW_PREFIX}/share/android-sdk")
  end

  caveats <<-EOS.undent
    We will install android-sdk-tools, platform-tools, and build-tools for you.
    You can control android sdk packages via the sdkmanager command.
    You may want to add to your profile:
      'export ANDROID_HOME=#{HOMEBREW_PREFIX}/share/android-sdk'

    This operation may take up to 10 minutes depending on your internet connection.
    Please, be patient.
  EOS
end
