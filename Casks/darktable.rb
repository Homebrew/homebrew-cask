cask "darktable" do
  version "3.4.1"
  sha256 "e13112ed1d5f9c55e5287aa9d7276f04b90909b2e356640f36227a0a53321658"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/release[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  conflicts_with cask: "homebrew/cask-versions/darktable-dev"

  app "darktable.app"
end
