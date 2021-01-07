cask "munkiadmin" do
  version "1.7.1"
  sha256 "0eb86e33162db7ee5c76c1f16b826481c2ec2002153479e738043f59c51c59b1"

  url "https://github.com/hjuutilainen/munkiadmin/releases/download/v#{version.major_minor_patch}/MunkiAdmin-#{version.major_minor_patch}.dmg"
  name "MunkiAdmin"
  desc "macOS app for managing Munki repositories"
  homepage "https://hjuutilainen.github.io/munkiadmin/"

  appcast "https://github.com/hjuutilainen/munkiadmin/releases.atom",
          must_contain: version.major_minor_patch

  app "MunkiAdmin.app"
end
