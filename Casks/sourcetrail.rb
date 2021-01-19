cask "sourcetrail" do
  version "2020.2.43"
  sha256 "a79386bfdc4acf7643e107949807c998d05b89c2c2483df5fb635905835b39be"

  url "https://github.com/CoatiSoftware/Sourcetrail/releases/download/#{version}/Sourcetrail_#{version.dots_to_underscores}_macOS_64bit.dmg",
      verified: "github.com/CoatiSoftware/Sourcetrail/"
  appcast "https://github.com/CoatiSoftware/Sourcetrail/releases.atom"
  name "Sourcetrail"
  desc "Code source explorer"
  homepage "https://www.sourcetrail.com/"

  app "Sourcetrail.app"
end
