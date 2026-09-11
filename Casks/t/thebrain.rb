cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.612"
  sha256 arm:   "9672b36ded3147504b333dc63ad1feb780d88f1980828bdf2e1530d6a11f4a70",
         intel: "23c39119725a8beb35001b86338dec29f242d226fa1f9f5b68e094d7ff73205e"

  url "https://updater.thebrain.com/files/TheBrain-#{version}-#{arch}.dmg"
  name "TheBrain"
  desc "Mind mapping and personal knowledge base software"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=#{version.major}000"
    strategy :header_match
    regex(%r{TheBrain[._-]v?(\d+(?:\.\d+)+)-[^/]+\.}i)
  end

  depends_on :macos

  app "TheBrain #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.thebrain.TheBrain",
    "~/Library/HTTPStorages/com.thebrain.TheBrain",
    "~/Library/Preferences/com.thebrain.TheBrain.plist",
  ]
end
