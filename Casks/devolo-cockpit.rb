cask "devolo-cockpit" do
  version "5.1.5.245"
  sha256 "21fae361aac8abb9ac1410bd2a6f0ad4d72ddf72e036c1c3b2cd9976009fc20c"

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
