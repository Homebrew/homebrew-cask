cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.23.0"
  sha256 arm:          "cea46c0f94ad037d103c5c1272e8b77fdec2e11f58b6ee4bb56a1e8705b90034",
         intel:        "3a21043bd8e387e13fd3bf478069a1ef0ca01860708d58b5be9c80cab91c44d7",
         arm64_linux:  "05497386802e2a33fe1f9164513c2a3e10caf8ec0f94e415afd5a85274453d1c",
         x86_64_linux: "a39c71c305f0015d34fa0c69f710b4548f25d4227004e888fdded55b7eb34476"

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
