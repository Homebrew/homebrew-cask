cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.295"
  sha256 arm:   "0103485bfcb22e10f958118476f3b7bc760fee819156ea241456fb53685051d6",
         intel: "73168a3da5efc42d791a36267ab84d14d07856b758af345613c559be486df505"

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
