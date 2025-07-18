cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.31.0"
  sha256 arm:          "715d3cdbea371f07b8188e3ee71ab3252b66be9c8b984fbde515737b0e3b61ac",
         intel:        "0ee32bfcef712f4e64759c14bd88f52afc8ef6cf1f92d394511c04b0cb7d04d7",
         arm64_linux:  "0cee29c3fa8213586ec4c4d89708bd4a9fd50b1652da98fe16e9f77a5cda4a29",
         x86_64_linux: "a46779cc626c966196c6e3216c3f10e4023d833dfd22773d270150790a3ccfb1"

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
