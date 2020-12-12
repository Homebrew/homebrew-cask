cask "mediaelch" do
  version "2.6.6"
  sha256 "624f2d640838c535d618ad0aa2621d354f5248047ff1e2c65e1d4fa3f3294ad4"

  url "https://github.com/Komet/MediaElch/releases/download/v#{version}/MediaElch_#{version}_macOS.dmg",
      verified: "github.com/Komet/MediaElch/"
  appcast "https://github.com/Komet/MediaElch/releases.atom"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  depends_on macos: ">= :sierra"

  app "MediaElch.app"
end
