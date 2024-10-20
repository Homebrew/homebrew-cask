# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "langgraph-studio" do
  version "0.0.28"
  sha256 "c518591bd2ae3c6aa37d9fa4fd3e713ca7b570377f78619997d4b36ed6dbfca2"

  url "https://github.com/langchain-ai/langgraph-studio/releases/download/v#{version}/LangGraph-Studio-#{version}-universal.dmg"
  name "langgraph-studio"
  desc "Desktop app for prototyping and debugging LangGraph applications locally"
  homepage "https://github.com/langchain-ai/langgraph-studio/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "LangGraph Studio.app"

  # No zap stanza required
end
