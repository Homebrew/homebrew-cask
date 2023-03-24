cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.2.1"
  sha256 arm:   "d037a23e8b37f6971a1f2b7c4cf3e03647b168ad2fb43080761d7a307b43048d",
         intel: "993a29685397c6e1a429d84be578da9271eefc06d2c75c10818ffc00b7d04a00"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}_#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url "https://www.darktable.org/install/"
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "darktable.app"
end
