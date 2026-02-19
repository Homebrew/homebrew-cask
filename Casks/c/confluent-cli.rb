cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.53.0"
  sha256 arm:          "f9d4e98b83fe849a2f79f6fed9c0e3433772067125c4d9b92d91d4ac51e91956",
         intel:        "ee22ca904cd04fde3867d4f39a9f513196d15fdb86bde3dc97ff42f78fdf2c85",
         arm64_linux:  "b47f57409311f959dd7a12ee72a5fc794dbc3be79054df8bd2afdb277cbb95ac",
         x86_64_linux: "6024dccdd9da6e259c977f01c61f58a66ddecb9ef85b69698bb77a02b8c2a78a"

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
