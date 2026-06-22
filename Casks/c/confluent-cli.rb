cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.67.0"
  sha256 arm:          "2a4bc2bcd2b02b59cce76e4306e74d35f66678ca74ad0be6de453fc70d743f34",
         intel:        "acee60e16948c79853d924ea7c9fe5ae2ccb93d1e8b5ae65ebb04aa6d8c89f75",
         arm64_linux:  "c5ada5b2fb99554341918cb2fb3b91f28f80c1368c6a58d5fe5c77c18aa6a790",
         x86_64_linux: "cee23ddcb47dd416ffc2410784aed0c4b4e4608e5dff9cdca832af1f69acbc92"

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
