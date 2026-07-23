cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.14"
  sha256 arm:   "fb6f050576292416abea35327e5dd9a7c18ce951b4337080de286139ee30a897",
         intel: "6dc1d0f43887494e02cc7d172f2d5aa404d2ea83c112d74ee63f11555e60211b"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  # No zap stanza required
end
