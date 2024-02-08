cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.6.0"
  sha256 arm:   "c2649a07410d70f5da57f9c3583f24c6a97adb994924af88f132a2232ddf7ab4",
         intel: "e4e53cc1ec6a5800029f39728c024882a0357458f5c8d8e0ff16dfe034e701ed"

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
