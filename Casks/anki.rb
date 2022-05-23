cask "anki" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"
  version "2.1.52"

  if Hardware::CPU.intel?
    if MacOS.version >= :mojave
      sha256 "91e43169fd0a3908c26f6d9d403ff5572b56d9f937e4e3d4272278da46a802bf"
      qtversion = 6
    else
      sha256 "eb6ddda7b255191a4fc8ba02fc31795b130f3697c67de76d42dbce5aa79304ee"
      qtversion = 5
    end
  else
    sha256 "9983d23a35e1d7c9d6a598d72c08c4a1da31a29afaaf169d1123007ffb7d4a52"
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
