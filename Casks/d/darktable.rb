cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.8.0"
  sha256 arm:   "628442bf336e4f51fdf39f8b144372cbd855fe7b17812e359b5f8f3e6b6d99fb",
         intel: "bded6986f72af8901f0fa28686d6d06e6b766d831c29abe8a0163b5a503a50e6"

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
