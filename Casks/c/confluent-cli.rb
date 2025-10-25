cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.43.0"
  sha256 arm:          "0d2c52576aaedd516cd2b2b2a43ab4c6704a92fd8478619dee1768ebb7301eca",
         intel:        "4f0885dd5115ef73679b6bd64922e03273e79b67cdbbecf7bd00e19cbfff232f",
         arm64_linux:  "2280a47d1968f8ed2fada201122c647c76379cfa678e6314228c79a2b8088a5d",
         x86_64_linux: "81951028df9de12701edb30d31b7d40c64617d2113c018744c2ab0ef000cec51"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_#{os}_#{arch}.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud?prefix=confluent-cli/archives/&delimiter=/"
    regex(%r{confluent[._-]cli/archives/v?(\d+(?:\.\d+)+)/}i)
    strategy :xml do |xml, regex|
      xml.get_elements("//Prefix").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end
