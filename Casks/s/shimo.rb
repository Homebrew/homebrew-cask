cask "shimo" do
  version "6.0.9b2,9171"
  sha256 "75952cde8bb74f33c040e311b8f0fb5731ede850640527863a31129f8473b60c"

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
