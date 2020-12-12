cask "devolo-cockpit" do
  version "5.1.4"
  sha256 "3fe25fe820e6abab489dd2f5e7de468430ff60e2131d3e6b4e8b8c3df8537cf1"

  url "https://www.devolo.com/fileadmin/Web-Content/DE/products/hnw/devolo-cockpit/software/devolo-cockpit-v#{version.dots_to_hyphens}.dmg"
  appcast "https://www.devolo.com/support/downloads/download/devolo-cockpit"
  name "Devolo dLAN Cockpit"
  desc "Configuration and network monitoring software"
  homepage "https://www.devolo.com/internet-in-any-room/devolo-cockpit"

  installer manual: "#{staged_path}/devolo Cockpit Installation.app"

  uninstall script: {
    executable: "/Applications/devolo/devolo Cockpit uninstall.app/Contents/MacOS/uninstall",
    sudo:       true,
  }
end
