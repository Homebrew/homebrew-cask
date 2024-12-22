cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "5.0.0"
  sha256 arm:   "14feb35ef2b2e8e50cf1855826ad4913e905a5600a56a87dd98382e8d828e9db",
         intel: "3f49cfb63958269b99065cf6b501678d4e63f2457ee1915bcd7ffa0dfef9dcfd"

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
