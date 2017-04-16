cask 'skype' do
  if MacOS.version <= :mountain_lion
    version '6.15.0.335'
    sha256 '592abdd157df12d718576a86c8f8e62fced55292fd7e6909d53aa5eaaa9218f4'
    url "https://download.skype.com/macosx/Skype_#{version}.dmg"
  else
    version '7.0.653'
    sha256 '58049191825e5f73daeb3118d405f84d5cadb9c84ca21b0cf4882ffb2f6c87fc'
    url "http://download.skype.com/macosx/0ddb8638badf78e8ce1d4904fb1e1a8c/Skype_#{version}.dmg"
  end

  name 'Skype'
  homepage 'https://www.skype.com/'

  auto_updates true

  app 'Skype.app'

  zap delete: [
                '~/Library/Application Support/Skype',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype',
                '~/Library/Caches/com.skype.skype',
                '~/Library/Preferences/com.skype.skype.plist',
                '~/Library/Preferences/com.skype.skypewifi.plist',
                '~/Library/Saved Application State/com.skype.skype.savedState',
              ]
end
