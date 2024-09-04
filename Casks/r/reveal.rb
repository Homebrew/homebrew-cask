cask "reveal" do
  version "50"
  sha256 "8d65bf3460a8361167d5a88ce5ab0999cf82da2f8022c786c4cbc19276d79e76"

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  name "Reveal"
  desc "Powerful runtime view debugging for iOS developers"
  homepage "https://revealapp.com/"

  livecheck do
    url "https://revealapp.com/updates/index.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Reveal.app"

  zap trash: [
    "/Users/Shared/Reveal",
    "~/Library/Application Support/Reveal",
    "~/Library/Caches/com.ittybittyapps.Reveal2",
    "~/Library/Logs/com.ittybittyapps.Reveal2",
    "~/Library/Preferences/com.ittybittyapps.Reveal2.plist",
    "~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState",
  ]
end
