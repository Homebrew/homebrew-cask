cask 'android-sdk' do
  version '4333796'
  sha256 'ecb29358bc0f13d7c2fa0f9290135a5b608e38434aad9bf7067d0252c160853e'

  # dl.google.com/android/repository was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/sdk-tools-darwin-#{version}.zip"
  name 'android-sdk'
  homepage 'https://developer.android.com/index.html'

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

  postflight do
    FileUtils.ln_sf(staged_path.to_s, "#{HOMEBREW_PREFIX}/share/android-sdk")
  end

  uninstall_postflight do
    FileUtils.rm("#{HOMEBREW_PREFIX}/share/android-sdk")
  end

  caveats do
    depends_on_java '8'
    <<~EOS
      You can control android sdk packages via the sdkmanager command.
      You may want to add to your profile:

        'export ANDROID_SDK_ROOT="#{HOMEBREW_PREFIX}/share/android-sdk"'
    EOS
  end
end
