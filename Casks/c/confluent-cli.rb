cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.77.0"
  sha256 arm:          "8a93800a28b3c1e138a8a911a205aeac98c14425f6eb4375eea2a7897c48b7dc",
         intel:        "d1890e70d5254a94dcc677a735633dbb330af2b78b04b5c7538819a7ec741fd1",
         arm64_linux:  "0f3a6e557ab7a4e088681ed6e7e74545b7716eb220bfa62dc2d7b72ef42bb6b1",
         x86_64_linux: "da87f01ea982d1e82ca670284b53fa85771d8ff01722446d0b4fe26f268a4382"

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
