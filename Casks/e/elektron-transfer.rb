cask "elektron-transfer" do
  version "1.8.11,10,2024"
  sha256 "2141bf49898f3704c016326dee4bed4efbd88adc8cede80d2e3627324fe382cf"

  url "https://elektron.se/wp-content/uploads/#{version.csv.third}/#{version.csv.second}/Elektron_Transfer_#{version.csv.first}.dmg"
  name "Elektron Transfer"
  desc "Transfer samples, presets, sounds, projects and firmware to Elektron devices"
  homepage "https://elektron.se/support-downloads/transfer"

  livecheck do
    url :homepage
    regex(%r{uploads/(\d+)/(\d+)/Elektron[._-]Transfer[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
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
