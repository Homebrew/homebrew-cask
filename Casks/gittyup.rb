cask "gittyup" do
  version "1.1.1"
  sha256 "d73f876fee2eed4fbbcbc309fa57101332b572f60b648e6c176b04e336f7b03a"

  url "https://github.com/Murmele/Gittyup/releases/download/stable/Gittyup-#{version}.dmg",
      verified: "github.com/Murmele/Gittyup/"
  name "gittyup"
  desc "Graphical Git client"
  homepage "https://murmele.github.io/Gittyup/"

  livecheck do
    url :homepage
    regex(/v(\d+\.\d+\.\d+) - \d{4}-\d{2}-\d{2}/i)
  end

  app "Gittyup.app"

  zap trash: [
    "~/Library/Application Support/Gittyup",
    "~/Library/Preferences/com.Murmele.Gittyup.plist",
    "~/Library/Preferences/com.github.gittyup.Gittyup.plist",
    "~/Library/Saved Application State/com.Murmele.Gittyup.savedState",
  ]
end
