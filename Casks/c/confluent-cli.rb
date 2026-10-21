cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.81.0"
  sha256 arm:          "ddc0e176cd11811fe9896a3654dfb18e58e0e9706dbf81c86d473e4298d8c90b",
         intel:        "c0ec7d6317a265f2980ed2b86be4a8bf9ed11dbbc9dab5e79c18daceacd65014",
         arm64_linux:  "da9aa256fbe01aebeb04b5f7f278bc438ceed8a705d36a32e9914b5479d87f9c",
         x86_64_linux: "019f996bf80a9112f8e7305c7a43c82446ef3050894476bc7b4cc8e81590b71c"

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
