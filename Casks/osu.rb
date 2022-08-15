cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.810.2"

  on_intel do
    sha256 "eafa5b429bafb893d3279f57485d8fd88f0c8bc46e0c253e8484c6fabb41f595"
  end
  on_arm do
    sha256 "65331f11cfbb220ab6b7f3baf99df02e749beaa971a76c4b93238936e98dbeec"
  end

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
