cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.32.0"
  sha256 arm:          "42acb0f53806963f5f0052649ecbf2a21510dd295e186bff82f9023e498502e6",
         intel:        "fcc504ccb9327103b58d33003e11b3853d794693bf3337b18f4c0a6ebd9b4979",
         arm64_linux:  "2a992885930f42a9e081fb411ae80b9b3e1ff145f8324aef57dd1f94145dcb5f",
         x86_64_linux: "4f6acc16471ba21462711b191dd34c26d1c426f0cd26ae72267db98095da31fc"

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
