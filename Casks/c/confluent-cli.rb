cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.41.0"
  sha256 arm:          "a52f9ca12b93af35ae543bbe629fe6fc59cfd64710297bd13ab716b804ccee65",
         intel:        "a4f9c06c7761160aeec775c6f865dd4f63424034a966aa290e8653972b9038c9",
         arm64_linux:  "8d62c83a8954f9bd6c2b3d57f1076c140c05d31b058fc570211662dd8f02f73d",
         x86_64_linux: "258d1e9a2353da5d3021af2381a895bb6b0c7c8c18f8823a874b832f378686a7"

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
