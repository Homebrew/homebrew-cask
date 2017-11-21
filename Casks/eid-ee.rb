cask 'eid-ee' do
  version '17.11.0.1762'
  sha256 '0edaff51d72b864602f3d18dd4363157fccfe7e4651d42e67879ad649abe1af8'

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
