cask "duefocus" do
  version "2.5.0"
  sha256 "41cb010236fce73f91ad0e55a14d29c7fe1451984aba6be3b6a5de3f1f789271"

  url "https://web.duefocus.com/distribution/darwin/v3/DueFocus-#{version}-mac.zip"
  appcast "https://web.duefocus.com/distribution/darwin/v3/appcast.html"
  name "DueFocus"
  homepage "https://duefocus.com/"

  app "DueFocus.app"

  zap trash: [
    "~/Library/Application Support/DueFocus",
    "~/Library/Preferences/com.qarea.duefocus.plist",
    "~/Library/Logs/DueFocus",
  ]
end
