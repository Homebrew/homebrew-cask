cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.58.0"
  sha256 arm:          "cc3944de5b698623340b6d60a49629390392342e407e2008aabf73ef2b48979c",
         intel:        "03d9034ed924e53cd3f965c6a6751a282ed5a324c44d81bb408ca6f92dd94171",
         arm64_linux:  "b2a2d6ecd4d39450bd7d62433ee0880d1520d17dd525c50b55a2781fdcd315cc",
         x86_64_linux: "8980fe90c2fd41ec2340e87b6a91af925534f7d95840e2c629c4e9b35cbc7ed4"

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
