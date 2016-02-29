cask 'bose-soundtouch' do
  version '10.0.13.12393'
  sha256 'b2bfaee92c30bada8d3e7c28cd829996415b0b0a1560536c8b1caf56b4141f5e'

  url "https://worldwide.bose.com/downloads/assets/updates/soundtouch_app-m/SoundTouch-#{version}-osx-10.9-installer.app.dmg"
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com'
  license :closed

  depends_on macos: '>= :mavericks'

  installer script: 'SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh',
            args:   %w[--mode unattended],
            sudo:   true

  uninstall script: {
                      executable: '/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       %w[--mode unattended],
                      sudo:       true,
                    }
end
