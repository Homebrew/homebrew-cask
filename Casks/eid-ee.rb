cask 'eid-ee' do
  version '17.12.0.1770'
  sha256 '74aed82ed10ea0f3b851c2e6b3b48b106445f017c2e708db8398cf77ae002e55'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    }

  caveats <<~EOS
    DigiDoc3 Client and ID-card Utility are available in the App Store:
      https://appstore.com/mac/ria
  EOS
end
