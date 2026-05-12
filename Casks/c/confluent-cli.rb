cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.61.0"
  sha256 arm:          "6938e3b62301cfdbe405da13601e74b7fb9e1231c32ec30514e05d6e34b8d4d0",
         intel:        "07e79785f6a85f5fbe387a0bb721204d72d2b084c5dd8b8d112b38a85c5cb31e",
         arm64_linux:  "8831f3e2b5a91de2273c18477391ff374ec327ad6404e0643742c072d58e6137",
         x86_64_linux: "5d247ac887d1eb334cf95ad5e63416a3a39789365e0d9b6ff6d1a2f2fe45aa20"

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
