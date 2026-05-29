cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "e7b37219dbf8f51e62fbe6385d70ed171c433b910d741087a769f4fa145c7e16",
         intel: "1c5de31713e9087fcfa5e78168213d553b74e18fcc329a7624daaca0805bd855"

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-apple-darwin.tar.gz",
      verified: "tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/"
  name "Tangleguard CLI"
  desc "Codebase Architecture Context via the CLI for LLMs and Humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  binary "tangleguard-cli"
end
