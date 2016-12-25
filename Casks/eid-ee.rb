cask 'eid-ee' do
  version '3.12.5.1673'
  sha256 'f68f76ad009b661c3f1ad76856ddc39e430a72963a2d3dec3093781067caed66'

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
