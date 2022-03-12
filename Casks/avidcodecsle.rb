cask "avidcodecsle" do
  version "2.7.6,3B39AE16"
  sha256 "b36f91f5551eedd2320121179c679300c64e09838c8967ebb73d1ac981873775"

  url "https://cdn.avid.com/Codecs/LE/#{version.csv.first}/#{version.csv.second}/AvidCodecsLE_#{version.csv.first}_Mac.pkg.zip",
      verified: "cdn.avid.com/"
  name "Avid Codecs LE"
  desc "Use QuickTime movies using Avid codecs on systems without Media Composer"
  homepage "https://avid.secure.force.com/pkb/articles/en_US/download/Avid-QuickTime-Codecs-LE"

  livecheck do
    skip "No version information available"
  end

  pkg "AvidCodecsLE.pkg"

  uninstall pkgutil: [
    "com.avid.avidcodecsle",
    "com.avid.avidcodecsle.pkg",
  ]
end
