cask 'eid-ee' do
  version '18.9.0.1792'
  sha256 'fa2bb3c7a426d749fea8a863c1bdd95aa8219c912e4e121d19014148dff1b424'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    },
            quit:   'ee.ria.TokenSigningApp'

  caveats <<~EOS
    DigiDoc3 Client and ID-card Utility are available in the App Store:
      https://appstore.com/mac/ria
  EOS
end
