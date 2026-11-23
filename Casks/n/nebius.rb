cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.310"
  sha256 arm:   "03f76906c07b89d7aa667117fec1723f6a3f602ba59f0552f4543e64ce7c7c18",
         intel: "5df4c3178045eb6662872f90508017714b3b62f5995c6060eb62374940eeb1a3"

  url "https://artifacts.nebius.cloud/cli/release/#{version}/darwin/#{arch}/nebius.zip"
  name "Nebius CLI"
  desc "Command-line interface for Nebius"
  homepage "https://docs.nebius.com/cli"

  livecheck do
    url "https://artifacts.nebius.cloud/cli/release/homebrew/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  binary "nebius"

  zap trash: "~/.nebius/.last_check_update.yaml"
end
