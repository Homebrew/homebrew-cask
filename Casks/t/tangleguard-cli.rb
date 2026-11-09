cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.27.0"
  sha256 arm:          "f8f494d0e64e9c5f1396fca0c30ebb8c14d7860ad1ec3053f6ff937cc2319b3d",
         intel:        "5f6fe32f9dfcffccd07cad1bdc8f9d125a4266c3e5943758dd6cc060c3725dfd",
         arm64_linux:  "a86862d870352da958650a9f109751c099bb4d65cb0d0b3b60cf16bcd84c98ff",
         x86_64_linux: "25795071235af2bb84df7b0ab96f620e41e19553a89ce1f828475562f7df3b28"

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
