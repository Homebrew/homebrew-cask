cask "maltego" do
  version "4.2.17.13809"
  sha256 "42e1f8a9b68394c5afe64a69a4c336080e1ae46f22ac45ac79edac56da38c04a"

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
