cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.716.1"

  if Hardware::CPU.intel?
    sha256 "876713f9682592aa11d19d6f7b48e77075430930ff94b7c10c848753d1426e82"
  else
    sha256 "9f64ec2fabb7917dcd19e5a16db72ffa2a4170b0d99effb4cddca5b37535ce9b"
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
