cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.73.0"
  sha256 arm:          "43692d5c7cbd671993d049375cf6efc78ad670cfa01a10929bcb2a9dc2208b86",
         intel:        "9c7b8b69ddfff087eba7015aba9050193a67c010851363bed3c30f072a976e1c",
         arm64_linux:  "be6b26d7a9e637f7faa8a10d1b7422356aaedda5e9c0d32133a5c2960fb78fb5",
         x86_64_linux: "b56c0e3cb7ccf56f3220c4c328ce1290aa24205905b2c0185b164e2d7ea5ca75"

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
