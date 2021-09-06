cask "maltego" do
  version "4.2.19.13940"
  sha256 "6e690f7fdb7deb715ea645732a1ba382a56b3c71a48bd2a76182d74a3592ef3b"

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
