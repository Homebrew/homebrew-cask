cask "latest" do
  version "0.8,487"
  sha256 "7740a16afde28845c5f1dee951208e2fadf6a1e214668e980164394c8ad34169"

  url "https://max.codes/latest/#{version.csv.first}.zip"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  livecheck do
    url "https://max.codes/latest/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Latest.app"

  zap trash: [
    "~/Library/Caches/com.max-langer.Latest",
    "~/Library/Cookies/com.max-langer.Latest.binarycookies",
    "~/Library/Preferences/com.max-langer.Latest.plist",
    "~/Library/Saved Application State/com.max-langer.Latest.savedState",
  ]
end
