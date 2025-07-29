cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.33.0"
  sha256 arm:          "adf640982175e7a82a0b71eb9c0fd1bdc995af1ff542c46ee250ede584794166",
         intel:        "231bee7b2ceaca32421de829e6c9934783a7b124d7ae6eac9e64b99ec756eab7",
         arm64_linux:  "5ebfe1d7708dbd918aa2905fce0c383dd68ec8b855d1b05300c5cfbe2e70846a",
         x86_64_linux: "fbf757eacbb692a9449128879bab59d2885b667f5f22e4600faca709a4ff5435"

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
