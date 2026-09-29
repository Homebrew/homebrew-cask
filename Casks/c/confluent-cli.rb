cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.78.0"
  sha256 arm:          "b9ecda350f994536dc631426c0658c47dca30f7bddbc5018451e1be269d81fa8",
         intel:        "a2f413d89ec937e4e10a9abe80ad5fd3d575359b892acaf9e34cead5ca4529b5",
         arm64_linux:  "98525e1782063e9929bc0fa72811a656b16e6afb2a3a6d506442b363643d3db3",
         x86_64_linux: "aae710386b668e4255f7e91350e700ebd27c027318c7374d68c2f93671c49220"

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
