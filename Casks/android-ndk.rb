cask 'android-ndk' do
  version :latest
  sha256 :no_check

  url 'https://developer.android.com/ndk/'
  name 'Android NDK'
  homepage 'https://developer.android.com/ndk/'

  stage_only true

  preflight do
    system_command '/usr/local/bin/sdkmanager', args: ['ndk_bundle'], input: 'y'
  end
end
