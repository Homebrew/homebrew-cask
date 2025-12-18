cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.48.0"
  sha256 arm:          "236c3bc53d1560c31762e978dbea0d9705ac226c6bd9c9bb8227eede8b68bc52",
         intel:        "c27de9228a016ceb2f738e24467796ded819f1afab05a7250b7829514969f6ae",
         arm64_linux:  "38c806169f5864b86340a78f441636b99aaf9e7b3e9ac9c611d5c18496e4f83d",
         x86_64_linux: "c99084742ef22733a8b070744e8ed22fbfc6525d21d46e448cffb28ef6467056"

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
