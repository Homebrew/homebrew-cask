cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.50.0"
  sha256 arm:          "191bccd09e32211acadef5cb7d1469946dba1352fb5ed44d52cb80f8bf9d08ea",
         intel:        "a2dae2c3dfe4cd8035acab88f8468270c637b1220d54ccde6c0e40f5a9ad4b3d",
         arm64_linux:  "452a33b55d1d2b7435bfb2aa65884d9eede8bf52a12a9c7c0aed86b4497abf29",
         x86_64_linux: "8817bfb305141e58ea28ccc9de2541acb73b30ed0d06af649a475f7baf89705c"

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
