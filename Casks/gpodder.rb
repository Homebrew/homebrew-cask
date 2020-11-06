cask "gpodder" do
  version "3.10.16"
  sha256 "122ba5535a6a870b06ea60e670a51de29fc436d103c370439e91cc610dd46531"

  # github.com/gpodder/gpodder/ was verified as official when first introduced to the cask
  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip"
  appcast "https://github.com/gpodder/gpodder/releases.atom"
  name "gPodder"
  desc "Podcast client"
  homepage "https://gpodder.github.io/"

  app "gPodder.app"
end
