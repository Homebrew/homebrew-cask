cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.70.1"
  sha256 arm:          "5da568c584d3452b46285970a1939c4d41c6f8cbda970fa432ca3b3f02af7bd5",
         intel:        "d5955119bdde5d6f22ed1d88ed69987af4a377428848ac2a0c94e6eb18d5895e",
         arm64_linux:  "01c8f0f593c44592fd3717a75722eeaa5f69c58a39acccf3703e38a7b2db4376",
         x86_64_linux: "6a9e238def123da8bb880d1111dc6cfcb354454bf8e12dd695614e555b6fa756"

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
