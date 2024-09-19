cask "mac-mouse-fix@2" do
  version "2.2.5"
  sha256 "ecd2bb9fc1763652bfc685a05e1adabacb5e97403d6d17bc7b3595089a0847c6"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip",
      verified: "github.com/noah-nuebling/mac-mouse-fix/"
  name "Mac Mouse Fix"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://macmousefix.com/"

  livecheck do
    url :url
    regex(/^v?(2(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "mac-mouse-fix"
  depends_on macos: ">= :high_sierra"

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end
