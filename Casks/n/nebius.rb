cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.309"
  sha256 arm:   "5fc693fcb048b14bc567acafd125a66ea8c9221c6b021a388d39892f895a9093",
         intel: "daab4c7f65655d6ebe6bfd6a3a239105a5f6cda0601ebba84631291536529785"

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
