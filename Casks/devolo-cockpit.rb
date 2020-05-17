cask 'devolo-cockpit' do
  version '5.1.3'
  sha256 '713dfba5edfed8349f31d0434643de7421bbda190533c23393e78c4d750aa714'

  url "https://www.devolo.com/fileadmin/Web-Content/DE/products/hnw/devolo-cockpit/software/devolo-cockpit-v#{version.dots_to_hyphens}.dmg"
  appcast 'https://www.devolo.com/support/downloads/download/devolo-cockpit'
  name 'Devolo dLAN Cockpit'
  homepage 'https://www.devolo.com/internet-in-any-room/devolo-cockpit'

  installer manual: "#{staged_path}/devolo Cockpit Installation.app"

  uninstall script: {
                      executable: '/Applications/devolo/devolo Cockpit uninstall.app/Contents/MacOS/uninstall',
                      sudo:       true,
                    }
end
