cask "maltego" do
  version "4.2.18.13878"
  sha256 "ab0059f7d17ee908a9e09a7abf7d62324b593dbb0a635d72bc020d3572087de0"

  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg",
      verified: "maltego-downloads.s3.us-east-2.amazonaws.com/"
  name "Maltego"
  desc "Open source intelligence and graphical link analysis tool"
  homepage "https://www.maltego.com/pricing-plans/"

  livecheck do
    url "https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json"
    strategy :page_match
    regex(/Maltego\.v(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
  end
end
