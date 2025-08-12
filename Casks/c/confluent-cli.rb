cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.35.0"
  sha256 arm:          "e22e2a2d0f279e95d0f762617bb7a4f462377c526cbe3b24febfce8bf17f183a",
         intel:        "820e0dbbe7d3914595b6ebc00dd9f973d5fd1a63b82e9ba74bf04fe17675acb5",
         arm64_linux:  "164807e6e01daf16afa6c95c43086777d4f9aa89c6a2c0e338240d9be122f816",
         x86_64_linux: "95cacbe0a82d04401599efdf2517537607891b66a6c614dcca63c67b7482e4b0"

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
