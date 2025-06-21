cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.0"
  sha256 arm:   "8dabf58b6d76c04800be8ab540d3c2f1e772123279e22629a7396fe3e26273de",
         intel: "bdffebcf758cd1ec6d4ee26eb031d52b1d7e4fe8fe000e728edb14bec91f3a35"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}-#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url "https://www.darktable.org/install/"
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :ventura"

  app "darktable.app"

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
