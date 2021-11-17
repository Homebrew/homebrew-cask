cask "ghost-browser" do
  arch = Hardware::CPU.intel? ? "" : "_arm64"

  version "2.1.3.6"

  if Hardware::CPU.intel?
    sha256 "67e4402e90dae718ff83e515404841fbf73742fb94b71ca5aadc78f312b5945b"
  else
    sha256 "86380279f1ebe097237d4c9a18baa844358ec83e96593bba8fbf10a3374aacf6"
  end

  url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}#{arch}.dmg"
  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/download/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Ghost Browser.app"
end
