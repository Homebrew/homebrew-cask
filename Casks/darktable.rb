cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.1"
  sha256 arm:   "49fd74e0b80b7b19b1652499ba0a1b585e5a504b9977cadd7040ae761f356d75",
         intel: "02352830580ad353e15b490018a94a5972755c9ae197d7eb219058469a44ba15"

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
