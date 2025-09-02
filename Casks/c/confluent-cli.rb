cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.37.0"
  sha256 arm:          "3cc70f47b43919a84460488212a4b463bd53a3b4f2cb8e87bef5fc552d15552f",
         intel:        "5ddbab143eb9072a40af23e405faef6c6e5dbc8708a1d96d49df16ebc1f8291c",
         arm64_linux:  "d5dcf80bf422091ab535cbbe74e094717a955de778bbb132ae6c6a6a3d753c86",
         x86_64_linux: "506f6f2d4a1910ae164992176bc54a6780fb2fb5b153d9a4ca9e564ea150ba88"

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
