cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.27.1"
  sha256 arm:          "bbbdf8ea2a11b28099af0aafbc62b812f1d9ae29cccbf4b33b219d33e95e87d8",
         intel:        "2536ef00ebfc53227726e1799ad828b4ece2fc21d5f29f676f0a20899f53fc2a",
         arm64_linux:  "55a38216aefd0eb13ee1bf27d56eaf2245a0102af33730bd0dbf035c5711a790",
         x86_64_linux: "4143011bf12e5623c87bce893d78cc6374263f0d0916db8884b6e9c3198bacc8"

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
