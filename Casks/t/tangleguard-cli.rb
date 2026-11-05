cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.26.0"
  sha256 arm:          "9ec446bdf98cd029922eeac7f80ed177889f4e0565648294ff8c690381347f74",
         intel:        "37999c678d78eae429523f15a251473bd37e0fbb982c2cdbc7893de7ac95980e",
         arm64_linux:  "4f1ca312c85c71920091adea54cb23eb7499d304128d7c7ddf53f1a17eaf0160",
         x86_64_linux: "1a17d7d5089ee65c630de35946f6a7fb1174bb7bc09aa997b2329774f11c5931"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard*"
  end
  on_linux do
    zap :not_required
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
