cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.6"
  sha256 arm:   "8cf0cb227b74747dd4f9410cfd0ad35bb3e2c8737ce683bb6811a005699a36d8",
         intel: "39752128c4f1394299f36b27b084436ec68faa5c27108030ff4ed762ff21b8cd"

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
