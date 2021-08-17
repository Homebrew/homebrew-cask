cask "devolo-cockpit" do
  version "5.1.6.2"
  sha256 "3fe3c6fd1fd8045178a65a8a52b0c2ac443ec468ad6efbee373b4b89b92782c9"

  url "https://www.devolo.global/fileadmin/Web-Content/DE/products/hnw/devolo-cockpit/software/devolo-cockpit-v#{version.dots_to_hyphens}.dmg"
  name "Devolo dLAN Cockpit"
  desc "Configuration and network monitoring software"
  homepage "https://www.devolo.global/devolo-cockpit"

  livecheck do
    url "https://www.devolo.global/support/downloads/download/devolo-cockpit"
    strategy :page_match do |page|
      match = page[%r{href=.*?/devolo-cockpit-v?(\d+(?:-\d+)*).dmg}i, 1]
      match.tr("-", ".")
    end
  end

  installer manual: "#{staged_path}/devolo Cockpit Installation.app"

  uninstall script: {
    executable: "/Applications/devolo/devolo Cockpit uninstall.app/Contents/MacOS/uninstall",
    sudo:       true,
  }
end
