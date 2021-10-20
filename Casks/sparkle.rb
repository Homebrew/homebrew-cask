cask "sparkle" do
  version "1.27.0"
  sha256 "458bcdbc364836ed50fc604c1a85fca1653de80d5f05d3e532563bafdb2b111b"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz",
      verified: "github.com/sparkle-project/Sparkle/"
  name "Sparkle"
  desc "Software update framework for Cocoa developers"
  homepage "https://sparkle-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sparkle Test App.app"
end
