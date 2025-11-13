cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.12.2"
  sha256 arm:   "8eefd6f0dcf52478fb521c3caa9f5aac756b36a3d5bc4430654be01617d3b184",
         intel: "8281353bce718b94c5bc583be23b004a66cf16f8d1d9df8af193ded52acd361f"

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
