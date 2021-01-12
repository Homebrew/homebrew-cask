cask "stellarium" do
  version "0.20.4"
  sha256 "ed2c561c0fec34662672e3754aaef59713c041dfef35fe74006459bbb694a42d"

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}.zip",
      verified: "github.com/Stellarium/stellarium/"
  appcast "https://github.com/Stellarium/stellarium/releases.atom"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
