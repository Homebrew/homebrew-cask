cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.34.0"
  sha256 arm:          "915c76886a0e824a2831eeac7dd1347797b7597efe33f3afd2c8c5c160614d7e",
         intel:        "86b30102bc05021398304b15543fa19e7ebdedb635892d987abe0874e4afbdf8",
         arm64_linux:  "cd9c872c174f6fb94da7460521792a95fab402b9e165ae32b13a5ca74f73f9f2",
         x86_64_linux: "3df437606ce5ca28717122e0284393ff1b2be9c8a1da9e66b6227c586fcd1ffb"

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
