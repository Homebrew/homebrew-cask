cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.57.0"
  sha256 arm:          "bc5287fc9272fd7a47d6242ce15915a6f3fb9bf1702b65707d0f825cb12ff820",
         intel:        "779b53bdd3f824011257d6362043245640645372437f558e71b556f7209286d8",
         arm64_linux:  "521dec237eb48dfafedf4ce15d365f9ffcd37ff596fb0308e6a9941b880c0bef",
         x86_64_linux: "5e4b4e8ea8b7247557b6e602f79115cc3d37963a59e43f7d94eb9bf9a290c687"

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
