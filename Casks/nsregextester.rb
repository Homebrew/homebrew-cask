cask "nsregextester" do
  version :latest
  sha256 :no_check

  # raw.githubusercontent.com/aaronvegh/nsregextester/master/ was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/aaronvegh/nsregextester/master/NSRegexTester.zip"
  name "NSRegexTester"
  homepage "https://github.com/aaronvegh/nsregextester"

  app "NSRegexTester.app"
end
