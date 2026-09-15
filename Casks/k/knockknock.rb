cask "knockknock" do
  version "4.1.0"
  sha256 "98eae6cda5a7e122e6c7e68622617c00d6533a909f505f002c93dd90941a3f9e"

  url "https://github.com/objective-see/KnockKnock/releases/download/v#{version}/KnockKnock_#{version}.zip"
  name "KnockKnock"
  desc "Tool to show what is persistently installed on the computer"
  homepage "https://objective-see.org/products/knockknock.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "KnockKnock.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.KnockKnock",
    "~/Library/Preferences/com.objective-see.KnockKnock.plist",
    "~/Library/Saved Application State/com.objective-see.KnockKnock.savedState",
  ]
end
