cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.82.1"
  sha256 arm:          "4bfea84332641f1bc5845aa9288f479aca0f5d87fda6c00c3cbef5f07f748be2",
         intel:        "c541e72208b59fd7acc0abc4332dd88a5c1f01171e0e19236ddc0f0baa0fff58",
         arm64_linux:  "9e3ac7ddf8ad91121ace6a833a4951fe1c3ebebe6b10af828c76bfe26effb6cc",
         x86_64_linux: "f38f0f7ead8140502ab39330dfb29b36c95f90076fa96f7572abff239a36dd12"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_#{os}_#{arch}.tar.gz"
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
