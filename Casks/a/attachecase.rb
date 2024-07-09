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
    regex(/AtcMacv?(\d)(\d)(\d)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
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
