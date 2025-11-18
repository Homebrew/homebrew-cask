cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.12.3"
  sha256 arm:   "5ce4367d0a379c93acf09f8adecf924c33b8a25ac50f32f129e454b2576f0ed6",
         intel: "ca29b50e424cedd64437e1d6a5da80ed5e4f04709cbb452b6c729631dceb89ac"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required
end
