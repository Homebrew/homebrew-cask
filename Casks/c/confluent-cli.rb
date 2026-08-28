cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.74.0"
  sha256 arm:          "ac8bfc43235d44db585c8bf618dc48085c543d7b1360bc7ce8cd4f0bbf1c6b47",
         intel:        "ead262268bdd6bfecbdea40aee6f12f66fc609e50dfa163c808cd1c149b3e2c5",
         arm64_linux:  "f429135dd5bbd8a7991578fc0f6271b61ff1f75da0ee3b460a5b6f3c65b74a15",
         x86_64_linux: "aeb25d3818d7fb321d660f5633d5bcc7ce0d4b9cdb3da19c7f95f3ccf262d205"

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
