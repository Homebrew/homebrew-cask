cask "attachecase" do
  version "4.2.1"
  sha256 "24cae251e12d8c673b8b22f137f39cb7c4fb2c4a317074fee6090c03e81696f4"

  url "https://hibara.org/software/attachecase/download/?f=AtcMac#{version.no_dots}.zip",
      user_agent: :fake
  name "AttacheCase"
  desc "Utility for encrypting/decrypting files and directories"
  homepage "https://hibara.org/software/attachecase/"

  livecheck do
    url "https://hibara.org/software/attachecase/json/attachecase_mac_history_en.json"
    regex(/^\D*(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["version"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :mojave"

  app "AttacheCase.app"

  zap trash: [
    "~/Library/Application Scripts/dev.hibara.attachecase",
    "~/Library/Containers/dev.hibara.attachecase",
  ]

  caveats do
    requires_rosetta
  end
end
