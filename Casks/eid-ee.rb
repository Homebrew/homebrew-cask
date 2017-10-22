cask 'eid-ee' do
  version '17.6.0.1724'
  sha256 'e4d5df99d0ace588024ebe98e694d1f3d30ef13fa8ac9918dc998243841cf984'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      ['y'],
                    }

  caveats <<~EOS
    DigiDoc3 Client and ID-card Utility are available in the App Store:
      http://appstore.com/mac/ria
  EOS
end
