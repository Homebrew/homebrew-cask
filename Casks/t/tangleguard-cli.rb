cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.19.0"
  sha256 arm:          "f10b98677fcd09c33c57a62a62649fc68075a13afcdd8a8a063931ab7dc633cc",
         intel:        "ef7253699b0508c595c5fb9390cf22ad5dc1f08c60849335041ad39d28c586eb",
         arm64_linux:  "e07c07eef7c80611ec66c8d8737d75ecef46cc4e613ddbd2395a8ed390ba1ff4",
         x86_64_linux: "80aac44741ceac181999379a286b22112521729767659b0d42d0063b28bc13ba"

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
