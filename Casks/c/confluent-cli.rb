cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.47.0"
  sha256 arm:          "0813fe4059a143f69f3420a261bc4355aae6a030597e9e9a6d086b627ee0ba3d",
         intel:        "ecd353df11759b5261440df1a1b1224ec0a2762b6a16fb082544b60eecfa3362",
         arm64_linux:  "c420592eb334358ec0308819c24879fa30221d5561d2e359dab7c66eaf76175c",
         x86_64_linux: "ad6f6ce5c124bcd9c29e855d4b80ea37c2520413ad5c6890c003cfd9c11e770d"

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
