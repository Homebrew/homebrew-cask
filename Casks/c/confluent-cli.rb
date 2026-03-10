cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.54.0"
  sha256 arm:          "bd9d188aee7b5019772a8fc09b212ea9da34bab027693ae39ffcfa956176798c",
         intel:        "bdec281ba1aa95090b96f7c45db6b54de5048ca189c283b2e46c3219d6af525b",
         arm64_linux:  "f4baacb992fa21daeafc0fb38e7e90d1e4ec7f1a8c8b6dcfb5c867696398f115",
         x86_64_linux: "afd77e10660bdba6a775580b22a790a5685924fb0ca4007db95b396f5ad17350"

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
