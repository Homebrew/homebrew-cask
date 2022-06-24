cask "anki" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"
  version "2.1.54"

  if Hardware::CPU.intel?
    if MacOS.version >= :mojave
      sha256 "92eb39f59f4e7b8b1b025178b337a0ef9d619521144748a32b3e2b8df1c45a00"
      qtversion = 6
    else
      sha256 "edc44e5862384bb1c419033267c78167809253090c0302f07114c00c223db07a"
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
