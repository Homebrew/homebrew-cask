cask 'eid-ee' do
  version '17.01.1686'
  sha256 '1cae314556d643663ea13d79abd67ff84aade76d5b50b331faf42cfa6b785b02'

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
