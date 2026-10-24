cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.647"
  sha256 arm:   "464673bf77cc7825bba822741108d849f4468f4da7f7cea349ed047df3000f4b",
         intel: "f2d824fcb319527d80ef73e4f5861350697ed1b3d7c8c7fee5046b9fb6da8bd6"

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
