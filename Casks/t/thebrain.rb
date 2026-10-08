cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.640"
  sha256 arm:   "3141bbb766dfb6fa70b45a12e2fa7c6fbaaceda69bdaa571e58a44cde429c533",
         intel: "e5b921bda7f53767469c2446c5c6a9518c31da8093a8ef6ca0054b1d9295e5e1"

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
