cask "devolo-cockpit" do
  version "5.2.0.185"
  sha256 "74921e752363cd7db99854c39895813f7de8dcc133eff4b3f5bb13bc07a1794f"

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
