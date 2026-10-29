cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.24.0"
  sha256 arm:          "25922e2adc1cb63371539c6cb116b1b90abd29d89f4a5565c6945be8f06b0c5c",
         intel:        "465e7291930ba18269c2ebe5142dce7524113ada7624442c7e276f644d5cd310",
         arm64_linux:  "0aedc5139e53b36cd278c2b6d3909e600474c752e64189959299a3cc3e81585e",
         x86_64_linux: "5d1ee3ce38d739bc4e6dee750171fbfe00cd7bc775cfaf1ddecb26ca70cd4941"

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
