cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.8.1"
  sha256 arm:   "1947ffb16f1fcc21d43c7bc7002e79f49fa82ee3d17a76832c11ee6b4d3cad73",
         intel: "84698315ad23c745cb126b5b695b211781f3e6355924cb9016e36d4c2dc0c6f7"

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
