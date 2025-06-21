cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.29.0"
  sha256 arm:          "093dff7eb9fbed9610885c1b9b79e9922d936838c95d759da776c0f86e7f2526",
         intel:        "fa294ccc1fff7104f31b7e73fba1e3ed84a89fbaa9faface35dc48018985948a",
         arm64_linux:  "7aa0b18752a4abdd37c4a2da165ff2c5f1f19c51621dcc3749ce637af4f9b94b",
         x86_64_linux: "d87e613d439017edb05b699ace4101c98208e7a442628712c38982e22a527da1"

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
