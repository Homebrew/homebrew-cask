cask "calcservice" do
  version "3.5"
  sha256 "5add1e69460a7f13f05bb6e4e8d1337e9bc1b8f9c40893415cb9933968d7cfc0"

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/calcservice/#{version}/CalcService.zip",
      verified: "s3.amazonaws.com/DTWebsiteSupport/"
  name "CalcService"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://www.devontechnologies.com/support/download"
    regex(/href=.*?v?(\d+(?:\.\d+)+)\/CalcService\.zip/i)
  end

  app "CalcService.app"

  zap trash: "~/Library/Preferences/org.grunenberg.CalcService.plist"
end
