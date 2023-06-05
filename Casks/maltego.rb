cask "maltego" do
  version "4.3.1"
  sha256 "d6303d29a5725b3c48e870e5b272ff895bed71d8e913fa39cadd3be3afac14d0"

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
