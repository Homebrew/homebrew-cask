cask "mac-mouse-fix" do
  version "3.0.3"
  sha256 "6eda564bf2eb92f1cfe01d8965a9f52f1233880122c7ce401c7f25c37505f560"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip",
      verified: "github.com/noah-nuebling/mac-mouse-fix/"
  name "Mac Mouse Fix"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://macmousefix.com/"

  livecheck do
    url "https://raw.githubusercontent.com/noah-nuebling/mac-mouse-fix/update-feed/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "mac-mouse-fix@2"
  depends_on macos: ">= :mojave"

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/Caches/com.nuebling.mac-mouse-fix",
    "~/Library/Caches/com.nuebling.mac-mouse-fix.helper",
    "~/Library/HTTPStorages/com.nuebling.mac-mouse-fix",
    "~/Library/HTTPStorages/com.nuebling.mac-mouse-fix.binarycookies",
    "~/Library/HTTPStorages/com.nuebling.mac-mouse-fix.helper",
    "~/Library/HTTPStorages/com.nuebling.mac-mouse-fix.helper.binarycookies",
    "~/Library/Preferences/com.nuebling.mac-mouse-fix.helper.plist",
    "~/Library/Preferences/com.nuebling.mac-mouse-fix.plist",
    "~/Library/WebKit/com.nuebling.mac-mouse-fix",
  ]
end
