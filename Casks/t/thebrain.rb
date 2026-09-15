cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.625"
  sha256 arm:   "60733f0423b2f0ab395fd54526e0f0377e288173874c6dd8f46e2b02ed434fbb",
         intel: "b4515d38d93866e749ab2007f1345c04b284d4ed8211e1432f5e57c3f7fb564d"

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
