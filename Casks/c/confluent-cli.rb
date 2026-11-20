cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.83.0"
  sha256 arm:          "5e3aeaf2d6ae58ffe16a0d628d438ebac9ce3e7f2e39e460faa09aae67c9820e",
         intel:        "6dbc6a1c9ef45783349036e5f49449153ae64ca9056ef92b6c6a853fa971cc71",
         arm64_linux:  "e3ebcb93702d35ca71340413e3082464d94d78e77e4a6c6844e1b07d3f954607",
         x86_64_linux: "bbc31c70cb747e7f4d78bf3518548563c5357535f35a8d1d2e9b8c38eaee8c44"

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
