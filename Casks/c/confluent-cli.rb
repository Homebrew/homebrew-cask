cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.72.0"
  sha256 arm:          "2cf3604d7527dc179de5cc76da90427071f2c36edeb550fdf471988b7325b72c",
         intel:        "b24653ea30eabf3fec975328f12bbe0601e87df6f47f6db19b2198f888136b7e",
         arm64_linux:  "17d29f82ad1f6a1c4657b896e98171967b172db3f905e8a494026b560e41d16d",
         x86_64_linux: "93ff773c93adb53e5f14a704ce41b2b8ead595d3d99cd3ea7e1ccfeeaf9aa72b"

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
