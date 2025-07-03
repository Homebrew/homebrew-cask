cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.30.1"
  sha256 arm:          "dced03ccda6f1b9660a75907fbd7ef84f6c74a8f307bd69ba83457739e6756df",
         intel:        "29964a3e399a7776b0dcdee9f3e868043ac599f8042230eb5afea9312963ab57",
         arm64_linux:  "1c0475746445b4c3342ac847c267277dc2667544021eebd376dde8a0a2c6f179",
         x86_64_linux: "0aced0081d4a82fa2e96687f7659e59a753d1ab293437da678233e76750f4184"

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
