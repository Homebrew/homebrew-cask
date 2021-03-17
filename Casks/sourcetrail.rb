cask "sourcetrail" do
  version "2020.4.35"
  sha256 "cf251f79038acd79609a8978ee369a3f68459b4ca98f919da1900565c2ecc764"

  url "https://github.com/CoatiSoftware/Sourcetrail/releases/download/#{version}/Sourcetrail_#{version.dots_to_underscores}_macOS_64bit.dmg",
      verified: "github.com/CoatiSoftware/Sourcetrail/"
  name "Sourcetrail"
  desc "Code source explorer"
  homepage "https://www.sourcetrail.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sourcetrail.app"
end
