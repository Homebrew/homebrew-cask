cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.645"
  sha256 arm:   "281e8af04780d0e66473768a8a92b2e3bdc8a6d34462d73a242c19f81cdd3193",
         intel: "4c8d8ade957c27f2443e6db0c2a09d803331281020a522ad1f4e97b8f9ba8dbd"

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

  uninstall quit: "com.thebrain.dekutron"

  zap trash: [
    "~/Library/Application Scripts/com.thebrain.dekutron.QuickThoughtShare",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.thebrain.dekutron.sfl*",
    "~/Library/Caches/com.thebrain.TheBrain",
    "~/Library/Containers/com.thebrain.dekutron.QuickThoughtShare",
    "~/Library/HTTPStorages/com.thebrain.TheBrain",
    "~/Library/Preferences/com.thebrain.dekutron.plist",
    "~/Library/Preferences/com.thebrain.TheBrain.plist",
  ]
end
