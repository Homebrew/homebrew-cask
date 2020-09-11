cask "seashore" do
  version "2.5.9"
  sha256 "511d1bed52249b81d4dddf10013bee1d2f5e8f0e7f0df54ccf0d7feffd69ec2d"

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast "https://github.com/robaho/seashore/releases.atom"
  name "Seashore"
  desc "Image editing application similar to GIMP"
  homepage "https://github.com/robaho/seashore"

  app "Seashore.app"
end
