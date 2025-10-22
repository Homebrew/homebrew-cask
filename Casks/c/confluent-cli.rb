cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.42.0"
  sha256 arm:          "19e315d73c80275d0243e96dd3911e89e30ff19d990e844b2789e12189eda15b",
         intel:        "8af4650917fba1d936effa0ba652a35b403450791fccff4d74ba014f995be44e",
         arm64_linux:  "3895ae9274e067b02e5c88fc58565842cc270850f7ae2cd0650bfc96d06c750f",
         x86_64_linux: "a38e5c30fe435aa023d37ccf77098ca21be5dd8c421c63651d8ce28b615ca04d"

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
