cask "darktable" do
  arch arm: "_arm64"

  version "4.0.0"
  sha256 arm:   "5bcd8e088065bc20815022f494ca1ca0613446562843f378ad60f68ae6917cb7",
         intel: "addab784af18bafa303340e754c00084c126e61c3d5b93006f8e6d602f838203"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}#{arch}.dmg",
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
