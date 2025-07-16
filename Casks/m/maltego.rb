cask "maltego" do
  version "4.10.0"
  sha256 "00132595cf42dec6a4662c15ff18a64f5eb7d83071c022b424199b41ea31f0cf"

  url "https://downloads.maltego.com/maltego-v#{version.major}/mac/Maltego.v#{version}.dmg"
  name "Maltego"
  desc "Open source intelligence and graphical link analysis tool"
  homepage "https://www.maltego.com/pricing-plans/"

  livecheck do
    url "https://downloads.maltego.com/maltego-v#{version.major}/info.json"
    regex(/Maltego[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json.map do |item|
        next if item["os"] != "mac"

        match = item["filename"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
    requires_rosetta
  end
end
