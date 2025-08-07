cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.1"
  sha256 arm:   "b7d45bb3d2550695e4eba4d260580561b51c18d612d5e2b2c9e67a432ae2516c",
         intel: "5060d73c03b3c7f4ca69a77039e69653fd2310df8cb649d66fc89f4c45289b0c"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}-#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url "https://www.darktable.org/install/"
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :ventura"

  app "darktable.app"

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
