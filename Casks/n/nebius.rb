cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.308"
  sha256 arm:   "6edd5319731000ab5fd044aa44a24b120b1c42aa97c5a78b57d9bb15b5d6449e",
         intel: "f34b68a9b1b3d569f07703717b0d6553152c13a2fde1a4cf562f2d8aa5e7d618"

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
