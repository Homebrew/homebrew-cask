cask "mac-mouse-fix@2" do
  version "2.2.4"
  sha256 "3d3bdbadfc612b25bd8d306d5f4014433036ed94f6f8e15d025b1de1eacecaf2"

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
