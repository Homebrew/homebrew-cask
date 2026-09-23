cask "shimo" do
  version "6.0.8b6,9135"
  sha256 "3d77b060ea5ceb9b79e708c474440d6f9b4b979636781df3f1dd9d77c873c3d3"

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
