cask "amadeus-pro" do
  version "2.8.6"
  sha256 :no_check

  url "https://s3.amazonaws.com/AmadeusPro#{version.major}/AmadeusPro.zip",
      verified: "s3.amazonaws.com/AmadeusPro2/"
  name "Amadeus Pro"
  desc "Multi-purpose audio recorder, editor and converter"
  homepage "https://www.hairersoft.com/pro.html"

  livecheck do
    url "https://www.hairersoft.com/pro.html"
    strategy :page_match
    regex(/Download\s*Amadeus\s*Pro\s*(\d+(?:\.\d+)*)/i)
  end

  app "Amadeus Pro.app"
end
