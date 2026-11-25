cask "thebrain" do
  arch arm: "arm64", intel: "x64"

  version "15.0.656"
  sha256 arm:   "93cebf48bff843f402e97ec23adbcb7babe745fdf7deea9d4982933cba4f6b9f",
         intel: "141717535b294bf978094d4051b6d23f6048c8aeda1d0a53e826f81cc39874cf"

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
