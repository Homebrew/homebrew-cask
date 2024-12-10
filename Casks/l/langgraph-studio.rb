cask "langgraph-studio" do
  version "0.0.32"
  sha256 "d7058a6cdddae96b68068adcd12bf75d4db7b64cb6b7c82f7d2adf66c93bec3c"

  url "https://github.com/langchain-ai/langgraph-studio/releases/download/v#{version}/LangGraph-Studio-#{version}-universal.dmg",
      verified: "github.com/langchain-ai/langgraph-studio/"
  name "LangGraph Studio"
  desc "Desktop app for prototyping and debugging LangGraph applications locally"
  homepage "https://studio.langchain.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "LangGraph Studio.app"

  zap trash: [
    "~/Library/Application Support/LangGraph Studio",
    "~/Library/Preferences/com.electron.langgraph-studio-desktop.plist",
    "~/Library/Saved Application State/com.electron.langgraph-studio-desktop.savedState",
  ]
end
