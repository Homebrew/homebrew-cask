cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.306"
  sha256 arm:   "253aead85d2369611fa2d9efea7adc81b31d00c438e500b385999f5edfb6cbcb",
         intel: "535773c515a8b471b09bb73d39a0108a4b0eb6bb08966049b9c29a493c211796"

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
