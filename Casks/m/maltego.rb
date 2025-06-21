cask "maltego" do
  version "4.9.3"
  sha256 "09b9f73d53e50b9be058d2e552a5c20435a0a0ab5c87342a6ba508cf95dff75e"

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
