cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.20.0"
  sha256 arm:          "1db50e97302856fdf37ec9d91147feeff10b31ff2ab82a6c3a76759204099079",
         intel:        "bfc2ba6ddad80272d5440834fbae3d4e47a42bf3370cae7df9b815999a869953",
         arm64_linux:  "fb6823c0d464fb2a4bcd1c91a40d6f92edc7d096abe3f790ece06c7850be09a0",
         x86_64_linux: "a7af54426830dab00d7acbf172756bbae454db1e7cf3254631d5bc42a44240e6"

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
