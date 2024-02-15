cask "elektron-transfer" do
  version "1.7.8,8381803e-e802-5dd8-a7d5-381000616a04"
  sha256 "5c3e363a5c26d3efcb6faa7c04ff0c90d56a4426fa17def54487904874ecd2da"

  url "https://s3-eu-west-1.amazonaws.com/se-elektron-devops/release/#{version.csv.second}/Elektron_Transfer_#{version.csv.first}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/se-elektron-devops/"
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
