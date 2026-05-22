cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.63.0"
  sha256 arm:          "677785e8fe0cb86e77a359ace09adccff976b38959415d1331c8e41977612e64",
         intel:        "47a925c800f5f13deb780ee051189242b745604e19566e87cc6f314e3d7262f3",
         arm64_linux:  "78bf8a70199cea39c67ab75f36358039031f31a39f89b60593f22563f49295a5",
         x86_64_linux: "3cc24331a3dac2f56c2319e012e6a1a3f3b7aeae6288dff57c3b4c948a178cda"

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
