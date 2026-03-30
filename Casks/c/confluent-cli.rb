cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.56.0"
  sha256 arm:          "8dffdfd29d746179aa8f9f6aedf2789774553e1c5f89c51f71bdecf5e44f400a",
         intel:        "349d673787745dd54187e1ab3d752cfcb5c41b56450debc1e58c46ce17ababfc",
         arm64_linux:  "4ecf987fa8ee0a7b581182ec38ea0eb2c40ff5cd09c6d850d924b7a984877566",
         x86_64_linux: "acc273a4ae620d266917d08102e50e190b3ba9c9b415b9fbf1948504a1b7be80"

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
