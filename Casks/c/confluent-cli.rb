cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.27.0"
  sha256 arm:          "c8ab8a8e4bd3e2e587f469aafb571fb14585066b20d18e53bb742f95736e273e",
         intel:        "966cd23fef44247e99747fd7d1b565d7e72562078e7c6385edf4300773209075",
         arm64_linux:  "28b2c079aa5e3d1469a59b4acc858309aa6767ebcbecae1ceb9d680aabbf1520",
         x86_64_linux: "2f6745e1bc101c96159c546a0283f4a1509497e7f8f91ac5d5d7d10f4481697a"

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
