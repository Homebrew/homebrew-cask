cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.572"
  sha256 arm:   "6fac9da0c48429bff53ee25c25e656cde3c6ce0a12cc3dc5bd7964078e01ba17",
         intel: "faae83a7e778b3e17698a8254ceb0a93231dace1298b36b7eecf4ad01b8228a7"

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
