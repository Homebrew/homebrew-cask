cask "mouse-fix" do
  version "1.0.1"
  sha256 "923469ae24f796115eebab2baf71d05e0c6b0fef0a5a8deb2afe800c83995044"

  url "https://github.com/noah-nuebling/mac-mouse-fix/releases/download/#{version}/MacMouseFixApp.zip",
      verified: "github.com/noah-nuebling/mac-mouse-fix/"
  name "Mouse Fix"
  desc "Mouse utility to add gesture functions and smooth scrolling to 3rd party mice"
  homepage "https://mousefix.org/"

  livecheck do
    url "https://github.com/noah-nuebling/mac-mouse-fix"
    strategy :github_latest
  end

  auto_updates true

  app "Mac Mouse Fix.app"
end
