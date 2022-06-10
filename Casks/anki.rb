cask "anki" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"
  version "2.1.53"

  if Hardware::CPU.intel?
    if MacOS.version >= :mojave
      sha256 "90ea470354ff6fb15d6aea5836b18d0e4f7e6292c3192a11354222052c896996"
      qtversion = 6
    else
      sha256 "a421b2b344f092d620af68d8c4530e9bddb2347697bfed82c06c20c258c0c5c1"
      qtversion = 5
    end
  else
    sha256 "273a7e4444f0f10ab81edd95f84b168c53e01e045b75b8e1ed48a208099aac16"
    qtversion = 6
  end

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt#{qtversion}.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "anki-beta"
  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
