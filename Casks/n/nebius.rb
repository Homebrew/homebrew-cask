cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.312"
  sha256 arm:   "b6d7ae78ef2d49f32a12c05f1a79616cc826035a149921e0768a7342b6970146",
         intel: "5d744d4a61ef48fceebead646fa6bb711b7cf553eed9d2dddb42d02196357384"

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
