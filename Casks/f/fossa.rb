cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.47"
  sha256 arm:   "fa555fcb38bd84ac21ef6b161e5bcca0f90cb49b9ab1503dd77385d1238c5377",
         intel: "b29d484408f91818e74bb65f1a7128acb9949151dfbf0763c1779b9a16f95beb"

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
