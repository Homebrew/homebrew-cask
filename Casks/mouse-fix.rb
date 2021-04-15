cask "mouse-fix" do
  version "1.0.3"
  sha256 "263cacc448411ddc05139e01b73e49f0cf39bc415604b5ff9678305d2814f565"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip",
      verified: "github.com/noah-nuebling/mac-mouse-fix/"
  name "Mouse Fix"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://mousefix.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end
