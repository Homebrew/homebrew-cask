cask "ripx" do
  version "6.4.0"
  sha256 "67ac1959dfd0bd4e032642a5c09aa4f44e14639d67edd92643637fd9578c58e7"

  url "https://s3.us-east-2.amazonaws.com/downloads.hitnmix.com/RipX_#{version.no_dots}.dmg", verified: "s3.us-east-2.amazonaws.com/downloads.hitnmix.com/"
  name "RipX"
  desc "Music stem separation and repair utility"
  homepage "https://hitnmix.com/"

  livecheck do
    url "https://hitnmix.com/changes/"
    regex(/v(\d+(?:\.\d+)*)\schanges/i)
    strategy :page_match
  end

  pkg "RipX.pkg"

  uninstall pkgutil: "com.hitnmix.HitnMix",
            delete:  "/Applications/RipX.app"
end
