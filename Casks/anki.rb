cask "anki" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"
  version "2.1.54"

  if Hardware::CPU.intel?
    if MacOS.version >= :mojave
      sha256 "92eb39f59f4e7b8b1b025178b337a0ef9d619521144748a32b3e2b8df1c45a00"
      qtversion = 6
    else
      sha256 "a421b2b344f092d620af68d8c4530e9bddb2347697bfed82c06c20c258c0c5c1"
      qtversion = 5
    end
  else
    sha256 "44e229181dd6db5b6d5a3f9c4647f4ae92c5acee0b47af99c8646c6a5cf927e1"
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
