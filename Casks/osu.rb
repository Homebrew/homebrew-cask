cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.515.0"

  if Hardware::CPU.intel?
    sha256 "14a2314056ba831f41542dc92dfe441e7101eb8b1d54bbb38de96f63b4371322"
  else
    sha256 "e927c4d86931c37c2afc5886deee65ab287300ec2e919e2659a377b9b237bc37"
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
