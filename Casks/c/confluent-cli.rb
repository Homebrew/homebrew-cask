cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.75.0"
  sha256 arm:          "922b42059f9194184da6ca264e58e344ab43e81447dd6eccea6409e1b6023b61",
         intel:        "a72a99e5873f3e113e40cb1fae19b6616ee0d457ac257aecfc9e58984118b126",
         arm64_linux:  "bae53fb0b737b1aca4a81db48ae738b945156e4b4f5d8439cd467ddc2c9ca71a",
         x86_64_linux: "f327e195faa605e133fcebdf6f5777208c57d118f6c052e2ad72c4554dc10200"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_#{os}_#{arch}.tar.gz"
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
