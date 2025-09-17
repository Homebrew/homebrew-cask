cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.38.0"
  sha256 arm:          "215d3310be00a5166e8340b40348d09bd569efccff924f0cc1c69734e1370209",
         intel:        "50fe7eb672ee628adef2dfea8b677788b7f8ece331c05e7599f27381f2e72bbb",
         arm64_linux:  "c733291bb0649f339d1685199e79428ec0b1b850a424ccc68bec87e3ed10bed4",
         x86_64_linux: "35eb6468d6d409b3726a3b702d4556e4aa45864ca7818a16c492710cae364024"

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
