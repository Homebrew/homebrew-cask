cask "langgraph-studio" do
  version "0.0.28"
  sha256 "c518591bd2ae3c6aa37d9fa4fd3e713ca7b570377f78619997d4b36ed6dbfca2"

  url "https://github.com/langchain-ai/langgraph-studio/releases/download/v#{version}/LangGraph-Studio-#{version}-universal.dmg",
      verified: "github.com/langchain-ai/langgraph-studio/"
  name "LangGraph Studio"
  desc "Desktop app for prototyping and debugging LangGraph applications locally"
  homepage "https://studio.langchain.com/"

  depends_on macos: ">= :catalina"

  app "LangGraph Studio.app"

  zap trash: [
    "~/Library/Application Support/LangGraph Studio",
    "~/Library/Preferences/com.electron.langgraph-studio-desktop.plist",
    "~/Library/Saved Application State/com.electron.langgraph-studio-desktop.savedState",
  ]
end
