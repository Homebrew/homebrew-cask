cask 'android-sdk' do
  version '25.2.3'
  sha256 '593544d4ca7ab162705d0032fb0c0c88e75bd0f42412d09a1e8daa3394681dc6'

  # google.com/android/repository/tools_r was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/tools_r#{version}-macosx.zip"
  name 'android-sdk'
  homepage 'https://developer.android.com/index.html'

  binary "#{staged_path}/tools/bin/sdkmanager"
  binary "#{staged_path}/tools/android"
  binary "#{staged_path}/tools/ddms"
  binary "#{staged_path}/tools/draw9patch"
  binary "#{staged_path}/tools/emulator"
  binary "#{staged_path}/tools/emulator64-arm"
  binary "#{staged_path}/tools/emulator-check"
  binary "#{staged_path}/tools/emulator64-mips"
  binary "#{staged_path}/tools/emulator64-x86"
  binary "#{staged_path}/tools/hierarchyviewer"
  binary "#{staged_path}/tools/lint"
  binary "#{staged_path}/tools/mksdcard"
  binary "#{staged_path}/tools/monitor"
  binary "#{staged_path}/tools/monkeyrunner"
  binary "#{staged_path}/tools/traceview"

  postflight do
    system_command "#{staged_path}/tools/bin/sdkmanager", args: ['tools', 'platform-tools', 'build-tools;25.0.2'], input: 'y'
  end

  caveats <<-EOS.undent
    We will install android-sdk-tools, platform-tools, and build-tools for you.
    You can control android sdk packages via the sdkmanager command.
  EOS
end
