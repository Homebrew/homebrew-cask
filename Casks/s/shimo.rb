cask "shimo" do
  version "6.0.10b12,9536"
  sha256 "066f42745335d71b7e89585bf9a039c2bf2233b4b08e343d139bb1661d8d87e1"

  url "https://s3.eu-central-1.amazonaws.com/shimo.jaeger.apps/Shimo_#{version.csv.first}_#{version.csv.second}.zip"
  name "Shimo"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.shimovpn.com/"

  livecheck do
    url "https://www.shimovpn.com/appcast#{version.major}.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Shimo.app"

  uninstall quit: "com.feingeist.Shimo"

  zap trash: [
    "~/Library/Application Support/Shimo",
    "~/Library/Caches/com.feingeist.Shimo",
    "~/Library/HTTPStorages/com.feingeist.Shimo.binarycookies",
    "~/Library/Preferences/com.feingeist.Shimo.plist",
  ]
end
