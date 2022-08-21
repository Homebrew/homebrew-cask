cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.821.0"

  on_intel do
    sha256 "555909957d66c176f6ac0c617a945ac7c9684e8ee82474def34a945bcfbd1d55"
  end
  on_arm do
    sha256 "c5c48f8f56342ee884363601f6df1a4faa1feb1eab9495c8e21b3cff9f5139f4"
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
