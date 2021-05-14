cask "nsregextester" do
  version "1.0"
  sha256 :no_check

  url "https://raw.githubusercontent.com/aaronvegh/nsregextester/master/NSRegexTester.zip",
      verified: "raw.githubusercontent.com/aaronvegh/nsregextester/master/"
  name "NSRegexTester"
  homepage "https://github.com/aaronvegh/nsregextester"

  app "NSRegexTester.app"
end
