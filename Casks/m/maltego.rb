cask "maltego" do
  version "4.14.1"
  sha256 "b2bbc9041dfd3eedcba352079b0e32fd56e0d4752d6221c6b6487f2a84b98a37"

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

  depends_on :macos

  app "Maltego.app"

  zap trash: "~/Library/Application Support/maltego"

  caveats do
    depends_on_java "11"
    requires_rosetta
  end
end
