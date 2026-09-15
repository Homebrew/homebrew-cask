cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.618"
  sha256 arm:   "117175fef7acca86b4c9a534244726d4e6479c2711e66ccd8ee6d48e6a6495c6",
         intel: "9072738daff644ae2262cc53d0c9b82aa754454d395c922d5ba761ee44c0d8d1"

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
