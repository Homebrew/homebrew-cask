cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.44.0"
  sha256 arm:          "87d3268176c67373df61cc8243461ab48605c7805b8bd10d735674c3167ea15a",
         intel:        "b2051f43c854da674ea82fbb2b4c38a1c85fbf96c0e6cfaad50e68870c7f5c82",
         arm64_linux:  "9e865d5a2293ef940018952a632db5a1d6049a221cac3a011161b77e447388bf",
         x86_64_linux: "d2376a0133ac40cfa5760b69f6c1da0984ad65ec0cb9fa47f0e053af253c14ee"

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
