cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.70.0"
  sha256 arm:          "60e546978ed73afbc70ed9b6fd5cf32ce785080eacc3c06e0c7416660ccd36d1",
         intel:        "c9bce3ddfbfeed6762c7d7b3edc0116b38699313068bf10ef0d6e99de5863782",
         arm64_linux:  "85d84c499479f77adc8dc878115751b210bbd9a4e9d5cddd4d00652c20ccb158",
         x86_64_linux: "e76ccf4c8b89392f8c306d7ea40f9fd0723b56f0472ec4674aae735a8ac7b224"

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
