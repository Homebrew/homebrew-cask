cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.584"
  sha256 arm:   "fe4497227e195df1bb05952484663ae0301ca4fe814a074a31514fc5cf226a1f",
         intel: "a196943ed014d0ae295361abe46f9559ee7f00c8c93ff08f653cb2925223aa1f"

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
