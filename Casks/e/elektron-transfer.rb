cask "elektron-transfer" do
  version "1.8.6,fc5c8eff-954f-5651-9283-9a17a9ae9db9"
  sha256 "05b590054659decd46c47431e47c0747330e000bc928f8a43e1e4c9c8f202355"

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
