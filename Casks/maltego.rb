cask "maltego" do
  version "4.3.0"
  sha256 "40c8efccfc81648b7e1d51087131398e6b9e13a9b26bde018729cff8dd4a51dd"

  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg",
      verified: "maltego-downloads.s3.us-east-2.amazonaws.com/"
  name "Maltego"
  desc "Open source intelligence and graphical link analysis tool"
  homepage "https://www.maltego.com/pricing-plans/"

  livecheck do
    url "https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json"
    regex(/Maltego[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
  end
end
