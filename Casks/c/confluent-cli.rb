cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.80.0"
  sha256 arm:          "b3808c3405c97bee81d906ec8a879a1b0c0a6fc0577445aca78b3d2d22b95d99",
         intel:        "ecdca577ebdccea0a9dceed7937ba8c0c4bec776a49f7ef90d3d7b1eb1f2d7ad",
         arm64_linux:  "120914f53b749eac0def4ccbf7bc491b953b9b2f9753d4d3d94fe8750b5102af",
         x86_64_linux: "3a3deade99f14faebeb579f6c97b99ed89d8ef92a1d01c77c389781e70b43ee0"

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
