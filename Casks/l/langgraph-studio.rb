# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "langgraph-studio" do
  version "0.0.27"
  sha256 "64964bd2cb47c345184cb0894b61cc4b1181db4ba66678231cf380448e613111"

  url "langgraph-studio"
  name "langgraph-studio"
  desc "Desktop app for prototyping and debugging LangGraph applications locally."
  homepage "https://studio.langchain.com/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :homepage
    regex(/api/latest)
  end

  depends_on macos: ">= :catalina"

  app "LangGraph Studio.app"

  # No zap stanza required
end
