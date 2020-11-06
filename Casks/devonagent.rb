cask "devonagent" do
  version "3.11.3"
  sha256 "f5b50eb92ffda9791b159e38b8d3725ef7a3e9307a441da0b1f5931921703808"

  # s3.amazonaws.com/DTWebsiteSupport/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  appcast "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
  name "DEVONagent Pro"
  desc "Tool to help searching the web more efficiently"
  homepage "https://www.devontechnologies.com/apps/devonagent"

  auto_updates true

  app "DEVONagent.app"
end
