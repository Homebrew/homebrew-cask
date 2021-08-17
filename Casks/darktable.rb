cask "darktable" do
  version "3.6.0.3"
  sha256 "12c9319d68dac5b1b5602bf470254467b90f5c5b9d2e93ea081d42884cfd4f80"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "homebrew/cask-versions/darktable-dev"

  app "darktable.app"
end
