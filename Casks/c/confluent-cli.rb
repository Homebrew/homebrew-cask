cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.36.0"
  sha256 arm:          "e2b3128332bab4d1c4c00cf36d45dd73fdac782fd15cbce4fa141dc138c96c0e",
         intel:        "5c4472fb245465e188397ccc00d6695b20ff23ab9c11300c489a8632b3832629",
         arm64_linux:  "48471b0a8f38a5a16213996fd61e1a42580358d529c240e1f77786cd10a3f4e8",
         x86_64_linux: "da6291075c8b920eabc657420723bd79fc655a90215304918a979de1c0a0adeb"

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
