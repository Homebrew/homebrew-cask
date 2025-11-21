cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.45.0"
  sha256 arm:          "ca85c26d9af12db9e32cdd5a725531b4ce31101885ef176c2b9957083a0faf02",
         intel:        "7c50ab94a2ad0e16293fb125ce918a8492003326513dfc697dfee68d30183390",
         arm64_linux:  "86e76f780ad3825759703599cc1c87ecd343051fe26117bde198d5696c7c63a3",
         x86_64_linux: "551105441eda0e9e52c3f0807f6bc7b4f3ceebbabc36d294f626eccfbf6e8020"

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
