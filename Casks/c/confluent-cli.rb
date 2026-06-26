cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.68.0"
  sha256 arm:          "b7f67ef6e1d9c4acab8288ecf117624622c4ae8a153c662f934b65d5dc722e20",
         intel:        "89d5c88ebb80cee1154c4347a673102d3757b74b88610dcf58a32add25003d26",
         arm64_linux:  "1d4d55f572a05ce679a1ab332fb0384b8b81161a9518ee04ad391b7eb4a30d05",
         x86_64_linux: "31e2ef104e10ab1f4e0a796311b09132151792c81a7f6618a858982bdfdfb007"

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
