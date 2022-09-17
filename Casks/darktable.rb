cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.0.1.1"
  sha256 arm:   "961af68e76fb274b0451bf287a9eb243f917ef68b933d48963534bfe328a955f",
         intel: "f4914a6c49a2e3a815c75b199d8da31a3160e179e8272e8fb1075ce48b188e65"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}_#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "darktable.app"
end
