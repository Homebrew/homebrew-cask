cask "nebius" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.307"
  sha256 arm:   "950711c94cb6c6aa8e6cc2f9814ee560dbd1e1f1539533324e7978ad978744e6",
         intel: "6da15bfff31c4aaecfe226d35c2304082059e327f292a45e100a244342b91860"

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
