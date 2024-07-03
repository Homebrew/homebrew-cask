cask "elektron-transfer" do
  version "1.8.11,a8c32131-0878-5e92-bb50-0caee13885a7"
  sha256 "2141bf49898f3704c016326dee4bed4efbd88adc8cede80d2e3627324fe382cf"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.csv.second}/Elektron_Transfer_#{version.csv.first}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/"
  name "Elektron Transfer"
  desc "Transfer samples, presets, sounds, projects and firmware to Elektron devices"
  homepage "https://www.elektron.se/en/download-support-transfer"

  livecheck do
    url :homepage
    regex(%r{([a-zA-Z0-9_-]+)/Elektron[._-]Transfer[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Transfer.app"

  zap trash: [
    "~/Library/Caches/se.elektron.OverbridgeTransfer",
    "~/Library/HTTPStorages/se.elektron.OverbridgeTransfer",
    "~/Library/Logs/Elektron Overbridge/Transfer.log",
    "~/Library/Saved Application State/se.elektron.OverbridgeTransfer.savedState",
  ]
end
