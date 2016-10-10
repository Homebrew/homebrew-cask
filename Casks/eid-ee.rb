cask 'eid-ee' do
  version '3.12.4.1666'
  sha256 'a5a7b2824da4efb9479e4b70a952981d41c50a75b00839d0216133b04e32b5b5'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      %w[y],
                    }

  caveats <<-EOS.undent
    DigiDoc3 Client and ID-card Utility are available in the App Store:
      http://appstore.com/mac/ria
  EOS
end
