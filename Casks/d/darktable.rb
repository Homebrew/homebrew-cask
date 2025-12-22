cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.4.0"
    sha256 "17e1eaf2bd7ab0ada2e93d4bba2ba6b81345e99eb338635682d08dae64d7a150"

    depends_on macos: ">= :sonoma"
  end
  on_intel do
    version "5.2.1"
    sha256 "5060d73c03b3c7f4ca69a77039e69653fd2310df8cb649d66fc89f4c45289b0c"

    depends_on macos: ">= :ventura"
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

  app "darktable.app"

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
