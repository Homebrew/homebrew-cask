cask "maltego" do
  version "4.7.0"
  sha256 "0fdf042ad567c47c0391db1313a8ae0acb6370259ee05df97c0d08210da581d1"

  url "https://downloads.maltego.com/maltego-v#{version.major}/mac/Maltego.v#{version}.dmg"
  name "Maltego"
  desc "Open source intelligence and graphical link analysis tool"
  homepage "https://www.maltego.com/pricing-plans/"

  livecheck do
    url "https://downloads.maltego.com/maltego-v#{version.major}/info.json"
    regex(/Maltego[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
    requires_rosetta
  end
end
