cask "darktable" do
  version "3.4.0"
  sha256 "da72476993160d1cb2ff8e40c6bd402f1032884936a9eb818197c936d4b22a14"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg",
      verified: "github.com/darktable-org/darktable/"
  appcast "https://github.com/darktable-org/darktable/releases.atom"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  conflicts_with cask: "darktable-dev"

  app "darktable.app"
end
