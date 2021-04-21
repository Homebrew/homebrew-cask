cask "maltego" do
  version "4.2.15.13632"
  sha256 "199b7abc49fe94d5f99fd06297ec772dd563e915af17d5d14365e6881cae36cf"

  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg",
      verified: "maltego-downloads.s3.us-east-2.amazonaws.com/"
  appcast "https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json"
  name "Maltego"
  homepage "https://www.maltego.com/pricing-plans/"

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
  end
end
