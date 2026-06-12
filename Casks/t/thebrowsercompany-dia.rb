cask "thebrowsercompany-dia" do
  version "1.35.1,82042"
  sha256 "b860a85061027bb51430348ca5feda84fefeae6138e3021b138fb2d0837c1c4c"

  url "https://releases.diabrowser.com/release/Dia-#{version.tr(",", "-")}.zip"
  name "Dia"
  desc "Web browser"
  homepage "https://www.diabrowser.com/"

  livecheck do
    url "https://releases.diabrowser.com/BoostBrowser-updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Dia.app"

  zap trash: [
    "~/Library/Application Support/Dia",
    "~/Library/Caches/company.thebrowser.dia",
    "~/Library/HttpStorages/company.thebrowser.dia",
    "~/Library/HttpStorages/company.thebrowser.dia.binarycookies",
    "~/Library/Preferences/company.thebrowser.dia.plist",
  ]
end
