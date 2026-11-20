cask "mac-mouse-fix@2" do
  version "2.2.6"
  sha256 "43fa9005d93870f0ade23de06e46014302df3dd5b58f1848ecbbdffc4b44e38c"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip"
  name "Mac Mouse Fix"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://macmousefix.com/"

  livecheck do
    url :url
    regex(/^v?(2(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "mac-mouse-fix"
  depends_on :macos

  app "Mac Mouse Fix.app"

  zap trash: [
    "~/Library/Application Support/com.nuebling.mac-mouse-fix",
    "~/Library/LaunchAgents/com.nuebling.mac-mouse-fix.helper.plist",
  ]
end
