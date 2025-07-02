cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.30.0"
  sha256 arm:          "0e223c9f350456bd16acb6450ba92fd0409bfdcc4cb2de4c04faaeeecf28e6e0",
         intel:        "805ed825a7b86618b30f091d72b2ac29d4cc660751aa76093daaf84603139c97",
         arm64_linux:  "9a46d752af5b8a258d1d225bd2015c11369f59af7959ebed8576fed101508e0c",
         x86_64_linux: "8c262494b3bab5ce158d50da34acb1e7c74b880d45373070e21e2aba7ce282c6"

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
