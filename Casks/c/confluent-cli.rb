cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.64.0"
  sha256 arm:          "2cb0ef0d4146b98c5dac536b45713fc4e34ca6aab2d3d29d0dec0ce36c146400",
         intel:        "4f666955f78b67d867b2c3a9abcf3facb2dfd949089d5d1c9392805fa27e09a7",
         arm64_linux:  "ae6390c2fecc23935e8ec6aeb3d98a02ff9518b05a0293cb82c416a07b61f1c4",
         x86_64_linux: "332548d47991733e1a00e085d352c09a5dba62d85e12b5aad342d7241d03cd7f"

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
