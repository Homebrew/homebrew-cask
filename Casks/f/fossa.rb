cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.1"
  sha256 arm:   "f048144f12a20823742c4f666948216400249557bdb61baeea4d51c203c57fd7",
         intel: "41968c6b35ab9c461257b4079a231d0f539f6030e96d48b5a363d9bf3cb76f8c"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
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
