cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.44.1"
  sha256 arm:          "72745ecd7d96b744b8a857c9e204835219dd13e522baf7ec433c999e71e27fb6",
         intel:        "8000ac17074607d72e1f11d23328340fa2b1009c6fe2f59d6de4d3804ae71c6c",
         arm64_linux:  "b4acfc8a5b6154830125b86893c2a70f1bea6e74f36bd8f1624eb17a2cf61762",
         x86_64_linux: "48fb6fa80be19f89643a8f2dab4bdb2efbdaaa580db9fc29a39fc5ec842a9839"

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
