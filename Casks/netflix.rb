cask "netflix" do
  version "1.0.4"
  sha256 "f9da1b57012e5e14777e6226d7a0009d5fe877713f3f889cfb72b438d6251e76"

  url "https://jellystyle-d5a.kxcdn.com/macos/netflix/Netflix.v1.0.4.zip",
      verified: "jellystyle-d5a.kxcdn.com"
  appcast "https://jellystyle.com/resources/macos/netflix.xml"
  name "JellyStyle Netflix"
  desc "Third-party app to view Netflix outside the browser"
  homepage "https://github.com/jellybeansoup/macos-netflix"

  app "Netflix.app"

  zap trash: [
    "~/Library/Caches/com.jellystyle.Netflix-wrapper",
    "~/Library/Preferences/com.jellystyle.Netflix-wrapper.plist",
    "~/Library/Saved Application State/com.jellystyle.Netflix-wrapper.savedState",
  ]
end
