cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.39.1"
  sha256 arm:          "b1225df3b773b182c27693f7b70e1c313ca19f19a4bbbd20d6b0aa8711889860",
         intel:        "b743dc65dde7d816b272de3f87f26d089c322988ed31a5e63afbeb949e8bcc67",
         arm64_linux:  "80bb0d38077dc7349b99e9d785437d9c31b214e6ed076206db3f8ec478eb3123",
         x86_64_linux: "f0a86c14c417a083e9d68651e50eaed7236836fac2ba56d6abfadbea930b8535"

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
