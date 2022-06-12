cask "osu" do
  arch = Hardware::CPU.intel? ? "Intel" : "Apple.Silicon"

  version "2022.612.0"

  if Hardware::CPU.intel?
    sha256 "b17cee05b9438988db24df316950da4672ec20d074f6588e933864b13bf9da24"
  else
    sha256 "51eed6ca412528d0e554f4ccec9cf8daddf63aa08414fe0a39b2dd70395cdf1b"
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
