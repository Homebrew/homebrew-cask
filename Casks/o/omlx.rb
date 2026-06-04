# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "omlx" do
  version "0.4.1"
  sha256 "dbca24ad8382707c5e413cf6e50c8e9cf328d5732d868de4621a158b72c4c593"

  url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos26-tahoe.dmg",
      verified: "github.com/jundot/omlx/"
  name "oMLX"
  desc "MLX inference server for Apple Silicon"
  homepage "https://omlx.ai"

  depends_on macos: ">= :sequoia"

  app "oMLX.app"

  zap trash: []
end
