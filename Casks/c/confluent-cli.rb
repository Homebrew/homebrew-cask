cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.55.0"
  sha256 arm:          "2e0f38847a11348cf1641c7c369ed2b2741b27548c1e9264a8a01e33147f087f",
         intel:        "977717493e0f85ba6475975f29a806d2c14cbf45ee9c370067d0225d4b96f402",
         arm64_linux:  "6aa4e9a2371cc8e953830cf8af30ff8d825db4c9423f08281fcc700095c7fc7c",
         x86_64_linux: "13e806bc0f59882158d589a6c886f653f3e87670c048e3f7813517185e582a85"

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
