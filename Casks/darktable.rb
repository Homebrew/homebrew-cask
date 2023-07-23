cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.2"
  sha256 arm:   "4576f4cc25f96d5a2334993bb847e826591b3190ddf24fb83461df093ce8ee2a",
         intel: "9eb84ea041daad704a8d4226d8c7cba77522dcd003d7166961869b1cfaa9ac9a"

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
