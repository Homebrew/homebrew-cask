cask "tablift" do
  version "2.0"
  sha256 "10e8a0a7ae8ad81b68ec6f7fdac535de81b2469986baa09489f05a7fdb0dd9c6"

  url "https://github.com/turtle-key/TabLift/releases/download/v#{version}/TabLift.dmg",
      verified: "github.com/turtle-key/TabLift/"
  name "TabLift"
  desc "Instantly restores minimized windows when switching apps with CMD+Tab or CMD+`"
  homepage "https://tablift.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "TabLift.app"

  zap trash: [
    "~/Library/Application Scripts/dev.tablift.TabLift",
    "~/Library/HTTPStorages/com.TabLift",
    "~/Library/WebKit/com.TabLift",
  ]
end
