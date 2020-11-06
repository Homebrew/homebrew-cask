cask "calcservice" do
  version "3.5"
  sha256 "5add1e69460a7f13f05bb6e4e8d1337e9bc1b8f9c40893415cb9933968d7cfc0"

  # s3.amazonaws.com/DTWebsiteSupport/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/calcservice/#{version}/CalcService.zip"
  name "CalcService"
  homepage "https://www.devontechnologies.com/apps/freeware"

  app "CalcService.app"
end
