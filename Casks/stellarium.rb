cask "stellarium" do
  version "0.20.3.1"
  sha256 "09bed6b52d6113dd8ead57052c52521f34d837e6cf6c67498e1ac9f703647a64"

  # github.com/Stellarium/stellarium/ was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}.zip"
  appcast "https://github.com/Stellarium/stellarium/releases.atom"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
