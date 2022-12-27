cask "attachecase" do
  version "4.1.9"
  sha256 "fdcd7949b6b2f97ae3f9111097f39c8b35cf76746908d6771565a3b9a37630ef"

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
end
