cask 'eid-ee' do
  version '17.10.0.1750'
  sha256 '52d1c2cc7b2e5509267d28cd9d99b6c8a9d2ec952afb303703c0099f21e92cb5'

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
      http://appstore.com/mac/ria
  EOS
end
