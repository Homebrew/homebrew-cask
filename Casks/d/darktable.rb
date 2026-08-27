cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.1"
  sha256 arm:   "155c25a48e06023eeeda3640f6f4fc7848bc1ad8e7384ba1d7b63098986fbeda",
         intel: "ab09e11d548a7028f7bacc2bc4549a272c4e8d385be0e38ecc9e7943914abe61"

  on_arm do
    depends_on macos: :sonoma
  end
  on_intel do
    depends_on macos: :sequoia
  end

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}-#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url "https://www.darktable.org/install/"
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "darktable.app"

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
