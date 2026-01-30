cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.51.0"
  sha256 arm:          "6ade0b99f2712a996ca6698541ef9d9edb9650962d6a26e9110e85b0e5147291",
         intel:        "fea5f17686e896aa5f53170defd573bd63274906e2638a1baa6c3e8a0934ec1d",
         arm64_linux:  "f9eab340f85948640bd3da491af459974cc5d4c6c50338ed59c953caead4ade1",
         x86_64_linux: "99a34a183847c0d7cf561b7823c4102c4beca59992a5fa96dff6814812afc438"

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
