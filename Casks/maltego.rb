cask "maltego" do
  version "4.2.15.13632"
  sha256 "9f17ee4f447f3610bdafa8c2df13be8ed5f96d833a073094579cd258a391cb8f"

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
