cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.62.0"
  sha256 arm:          "72130a894fb1bfca93de7d85d01bdb00d3d404a895564a4a1f8748579f2174cf",
         intel:        "7f56492ea65e548ab5432dd00108e47d6caea5b25981ddaf63ab7f891cc01477",
         arm64_linux:  "3a8c10fa2461890549325d82d11fe995671ff13be1cae56da0e0b30d7472ed4b",
         x86_64_linux: "ece2fa86d239607819f2f8790b010ef7a08c78c1919447e2d523b1c3f2866631"

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
