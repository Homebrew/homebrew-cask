cask "sourcetrail" do
  version "2021.1.30"
  sha256 "4af4d5e954dc82850c4065f5a44a3e87fa4373f2d979e631cb005c4f90721e02"

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
