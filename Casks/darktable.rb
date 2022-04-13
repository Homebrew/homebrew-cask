cask "darktable" do
  version "3.8.1"
  sha256 "9ca2bb86af90e76aeb67e0e12e167dc35d8a022ee79d66a1e08c5b0345d123a8"

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
