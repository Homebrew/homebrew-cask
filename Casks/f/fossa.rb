cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.8"
  sha256 arm:   "f7eca617072b9cc043e7acef838db2b160585e562d85f5d817f5b1e75a0392a9",
         intel: "78619057f6b4ed1b42d6b4d119bae43c6521da1040ab1e87469756218761c0c2"

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
