cask "ghost-browser" do
  version "2.1.3.5"

  if Hardware::CPU.intel?
    sha256 "9e49011e0d37af05093eb61f782f7d5a45311a141528cb645b53556348dc43ed"
    url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}.dmg"
  else
    sha256 "b8f56371002be6bba6e7a0a2716db8230af9cbc80594e1265713d1b21f3012ed"
    url "https://downloads.ghostbrowser.com/GhostBrowser-#{version}_arm64.dmg"
  end

  name "Ghost Browser"
  desc "Web browser"
  homepage "https://ghostbrowser.com/download/"

  livecheck do
    url "https://ghostbrowser.s3.amazonaws.com/updates/changelog.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Ghost Browser.app"
end
