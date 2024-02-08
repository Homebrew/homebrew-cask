cask "calcservice" do
  version "3.5.1"
  sha256 "844f46b54c7168fb8783a8a8ecb1055377927b540c2e27d6915b2d5432172daa"

  url "https://download.devontechnologies.com/download/freeware/calcservice/#{version}/CalcService.app.zip"
  name "CalcService"
  desc "Enter calculations into any Service-aware app"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://www.devontechnologies.com/support/download"
    regex(/calcservice.*?(\d+(?:\.\d+)+).*?app/i)
  end

  depends_on macos: ">= :el_capitan"

  app "CalcService.app"

  zap trash: "~/Library/Preferences/org.grunenberg.CalcService.plist"
end
