cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.0"
  sha256 arm:   "40e41dcf508398fc67b2bce3441ac80b5dc5886e86cad15cf214530f42bf730d",
         intel: "64af00c1ae160a6e95c459260c7789a431bb050f23afc62f87d6f23f3f06ced1"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}-#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url "https://www.darktable.org/install/"
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "darktable.app"

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
