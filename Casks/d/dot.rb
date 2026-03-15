cask "dot" do
  version "2.2.0"
  sha256 "7338ea500dd253b2767bfb5a95dc76b0ea291b512cb162497cf80f3b2edd2baf"

  url "https://github.com/prateekkeshari/dot-releases/releases/download/v#{version}/Dot-#{version}.dmg",
      verified: "github.com/prateekkeshari/dot-releases/"
  name "Dot"
  desc "Menu bar calendar with meeting reminders"
  homepage "https://www.trydot.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Dot.app"

  zap trash: [
    "~/Library/Application Scripts/com.dot.app/",
    "~/Library/Caches/com.dot.app/",
    "~/Library/Containers/com.dot.app/",
  ]
end
