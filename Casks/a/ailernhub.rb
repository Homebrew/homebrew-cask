cask "ailernhub" do
  version "1.0.2"
  sha256 "8c55ae97cd9b0de6bc92ddff98f80d9d1c419adc85c3cef8c50aeb93927b2a8d"

  url "https://github.com/ArronAI007/AILearnHub/releases/download/v#{version}/AILearnHub.zip"
  name "AILearnHub"
  desc "LLM course learning platform with in-browser Python execution"
  homepage "https://github.com/ArronAI007/AILearnHub"

  depends_on macos: :ventura

  app "AILearnHub.app"

  zap trash: "~/Library/Preferences/com.ailernhub.app.plist"
end
