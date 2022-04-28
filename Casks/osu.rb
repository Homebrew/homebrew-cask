cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.424.1"

  if Hardware::CPU.intel?
    sha256 "41b11ea500233d7defcec7e052c3559bc8fa510de82411bf3cc12d8e35ff395b"
  else
    sha256 "c085e92582fd6dddfa8b11caef751654acf7e7f7a1252209638e42d7bbd26173"
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
