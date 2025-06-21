cask "elektron-transfer" do
  version "1.9.5,10,2024"
  sha256 "ff023c8bb6f51d41f09846a40794d666850b2e69dc7a9599c0b27720ec37ce45"

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
