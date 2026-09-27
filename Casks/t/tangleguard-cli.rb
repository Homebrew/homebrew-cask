cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.18.0"
  sha256 arm:          "eda81b1bbcd740d93947c3c7f7ba4110cac28483812113a276b975645d387afa",
         intel:        "d44b206c3ef2363fab7bd9f33959beb02f59f0990bac6e327e9884b1ba46b9a3",
         arm64_linux:  "fdb26c08ddd92b1c31db54064e8c33af158db209b5f088a284a65532b0f4e626",
         x86_64_linux: "86c1963dc7474b68bc6c05251ad92b77d305fae7bb8fbdef239c585932b389ae"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard*"
  end

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz"
  name "Tangleguard CLI"
  desc "Code architecture context for LLMs and humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "tangleguard"
end
