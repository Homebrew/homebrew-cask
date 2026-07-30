cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.71.0"
  sha256 arm:          "50b9fd04b43fd59e1953c39937664aac7ee31d1691a24748dd2d8ab42156f9dd",
         intel:        "9d6feb9a2c617a952da651859480e65ad7dfe4b9340975165d4a5e274c6e9ab9",
         arm64_linux:  "99689c55f65b0fd4879ec09f4fcb24820c49b1d1b8efd302eea061391ef2435b",
         x86_64_linux: "1cb708228bb2c0a2706636e318d16bdd5c460d44b7ab20adc692e281b33928a4"

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
