cask "ailernhub" do
  version "1.0.2"
  sha256 "aa232ca600efcd1b4333c749bf5e68822ed21efa655c91ab9ac2f830993ef6b0"

  url "https://github.com/ArronAI007/AILearnHub/releases/download/v#{version}/AILearnHub.zip"
  name "AILearnHub"
  desc "LLM course learning platform with in-browser Python execution"
  homepage "https://github.com/ArronAI007/AILearnHub"

  depends_on macos: ">= :ventura"

  app "AILearnHub.app"

  zap trash: [
    "~/Library/Preferences/com.ailernhub.app.plist",
  ]
end
