cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.49.0"
  sha256 arm:          "a148e06ee3896bdeb3413d70f33d6fab09bff5540dc18b99931e7ef3a71274de",
         intel:        "0b262fc18e4d8dc57fce5851c30e36dda2b38db6b53d0c0164a4217861244844",
         arm64_linux:  "bb0bf27a3b4a85f68581428f723177b05749fa0cc6ab38c08034bd517d5fc19f",
         x86_64_linux: "455dcf969bd16921a31ce6b9df65e795eac69b51a4f112ac1a22217c21e42524"

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
