cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.53.0"
  sha256 arm:          "6a56d421b41cab7b534b5750e07a8714b5589aa61095be8fbe2561ed9b1990ca",
         intel:        "4fb08a01ca4f41b38e1b5bee0e0d0b606bb027e8f1866e62419aa048ad230ebe",
         arm64_linux:  "f52bb63a36cc3ac4160bf60b7b2684d98cb0ffb0c9deb663424b6b91c3210e07",
         x86_64_linux: "4ce85c8f50ae7fd2cb0860e4f62364bfe9c159989bf68aecd3e1cffa3bb4be7c"

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
