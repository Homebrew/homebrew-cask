cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.311"
  sha256 arm:   "44e3ca10ac52fc87d11b8a717295f3a1b151259b214794735eddc567054d85cc",
         intel: "e4899ae781b4f5b19aa48f026cea18ae00e54a0b12dc210c232208db15d00b64"

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
