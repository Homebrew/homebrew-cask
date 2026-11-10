cask "shimo" do
  version "6.1,9619"
  sha256 "d68f7a868fdd70d310b12bcd83825dd9d948d74af00c7592012aa7e8edf8d4f7"

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
    "~/Library/HTTPStorages/com.feingeist.Shimo",
    "~/Library/HTTPStorages/com.feingeist.Shimo.binarycookies",
    "~/Library/Logs/Shimo",
    "~/Library/Preferences/com.feingeist.Shimo.plist",
  ]
end
