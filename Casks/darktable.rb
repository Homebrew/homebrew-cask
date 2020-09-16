cask "darktable" do
  version "3.2.1"
  sha256 "292b8327fdc2bd6346994d52f904e0d89078100c91eec2a7c6982f71f8dd24ca"

  # github.com/darktable-org/darktable/ was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast "https://github.com/darktable-org/darktable/releases.atom"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  conflicts_with cask: "darktable-dev"

  app "darktable.app"
end
