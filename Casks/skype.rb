cask 'skype' do
  if MacOS.version <= :mountain_lion
    version '6.15.0.335'
    sha256 '592abdd157df12d718576a86c8f8e62fced55292fd7e6909d53aa5eaaa9218f4'
    url "https://download.skype.com/macosx/Skype_#{version}.dmg"
  else
    version :latest
    sha256 :no_check
    url 'https://www.skype.com/go/getskype-macosx.dmg'
  end

  name 'Skype'
  homepage 'https://www.skype.com'

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
