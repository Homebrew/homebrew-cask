cask "sourcetrail" do
  version "2020.2.43"
  sha256 "a79386bfdc4acf7643e107949807c998d05b89c2c2483df5fb635905835b39be"

  # github.com/CoatiSoftware/Sourcetrail/ was verified as official when first introduced to the cask
  url "https://github.com/CoatiSoftware/Sourcetrail/releases/download/#{version}/Sourcetrail_#{version.dots_to_underscores}_macOS_64bit.dmg"
  appcast "https://github.com/CoatiSoftware/Sourcetrail/releases.atom"
  name "Sourcetrail"
  desc "Free and open-source cross-platform source explorer"
  homepage "https://www.sourcetrail.com/"

  app "Sourcetrail.app"
end
