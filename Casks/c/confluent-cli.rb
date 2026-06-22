cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.66.0"
  sha256 arm:          "da21a94423e7122920d9f8e66d13c8c5534f70114f792850da8322be4e7490f5",
         intel:        "7db1de64a747255e4d78a46c9dc5f839dea85d6f578d6b9036f804fe68d45d53",
         arm64_linux:  "3da32baced07d719d520334f3de32ce03f7ef707a20e43d98d77c001d2a3fc24",
         x86_64_linux: "e7dc3a9d04e6fede031be90b9effd53123de587ba41d3afdf11283a2ddde34a2"

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
