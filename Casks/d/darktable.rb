cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.6.1"
  sha256 arm:   "145a11c3965b4c5cc2c53c9277f5896569fe55c05f2445f3185de94cd9667585",
         intel: "a7676fb36f208a41e026d806a0408d2364251d843810fd7dc2003e251ae09773"

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
