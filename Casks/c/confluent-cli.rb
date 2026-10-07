cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.79.0"
  sha256 arm:          "e8e3606f12043769dd620d019a5b7709d90899c3ae97bf3ac3ad77c41fca8edb",
         intel:        "97669e9859d8df57ecef490fc8a08a8d253a94bd662eb842e53392d1b5cb4d93",
         arm64_linux:  "3dfb048e05f19e552e4a3f29986aaa78c276b2f6f5e5272e3e20c136f1589b7a",
         x86_64_linux: "b4795e12a2a7f81b68a20a33f5aa8c1742b08110a4a27bf046feab2cb91ffa5e"

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
