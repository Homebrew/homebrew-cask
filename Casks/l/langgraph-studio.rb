cask "langgraph-studio" do
  version "0.0.31"
  sha256 "cc7384ae66ce6266ab5f1fa49b3ccc973ea15253f106e30a9c977b31849e3a35"

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
