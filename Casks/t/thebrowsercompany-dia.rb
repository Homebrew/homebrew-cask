cask "thebrowsercompany-dia" do
  version "0.37.1,65361"
  sha256 "1da8ac8110a9c4e5a5b735a28c2019410ed81ffc742cc11426bedb0630b1ae1d"

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
  depends_on macos: ">= :sonoma"

  app "Dia.app"

  zap trash: [
    "~/Library/Application Support/Dia",
    "~/Library/Caches/company.thebrowser.dia",
    "~/Library/HttpStorages/company.thebrowser.dia",
    "~/Library/HttpStorages/company.thebrowser.dia.binarycookies",
    "~/Library/Preferences/company.thebrowser.dia.plist",
  ]
end
