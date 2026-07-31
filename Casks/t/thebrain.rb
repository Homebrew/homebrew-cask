cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.587"
  sha256 arm:   "71f25e226ad5f4a4d08fb6889fef7b81f79555663df8da9dbca6185f99bff7c6",
         intel: "2e3fc605d0040c7aa6b6678b5df51e2f19e810bdb2fe0b57ee2cb2bb7af87fb4"

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
