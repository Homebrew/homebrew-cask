cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.39.0"
  sha256 arm:          "0b2a93a95bfb99007cf86f8441f0c5ceb547a1b2fe1ed65357351268da2795f3",
         intel:        "17e4a1cfb2bcd7a96957117a2badcb0c0dca57dbf76148353def7564c0cf9a2d",
         arm64_linux:  "ea3f4e7940bf1be9892895c89dc31c9827169ccfcd071e899c9f353f48d5152a",
         x86_64_linux: "f4753c7593e9fa08ae7884253968b82be89c9af303b322bcc0017db2bbd7bee4"

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
