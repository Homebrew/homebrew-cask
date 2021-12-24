cask "darktable" do
  version "3.8.0"
  sha256 "fe1f1100bf3ca1acc11f69e2ffc6dbb58d11449ed85c086e0ecc52d5acb78e24"

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

  app "darktable.app"
end
