cask "maltego" do
  version "4.2.13.13462"
  sha256 "d1db4084c4861c552575734689c10b53e2d669ad45fab78b9dc91a572766ae75"

  # maltego-downloads.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg"
  appcast "https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json"
  name "Maltego"
  homepage "https://www.maltego.com/pricing-plans/"

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
  end
end
