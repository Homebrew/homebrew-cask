cask "anki" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"
  version "2.1.50"

  if Hardware::CPU.intel?
    if MacOS.version >= :mojave
      sha256 "7f1ff8c79ee7f01efd19c6a434e39209b0664da693cf3a8441dc5dc5f5a9e882"
      qtversion = 6
    else
      sha256 "dd2ae85e02a9153662d4e8899e39782c2861dbd5d5d5eb3d408dd4a86a541525"
      qtversion = 5
    end
  else
    sha256 "a17c47ddde0b34caffef13d68f696650793ef7246303b1f74c173d8231d44f53"
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
