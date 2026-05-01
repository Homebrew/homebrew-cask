cask "input0" do
  version "0.4.0"
  sha256 "9cad9a219f0138ec624aac2a8cc737b77a1dad6a60c3606a287c43d01e387d81"

  url "https://github.com/10xChengTu/input0/releases/download/v#{version}/Input0_#{version}_aarch64.dmg",
      verified: "github.com/10xChengTu/input0/"
  name "Input 0"
  desc "Voice input tool with AI transcription"
  homepage "https://input0.com/"

  depends_on macos: ">= :big_sur"

  app "Input0.app"

  zap trash: [
    "~/Library/Application Support/com.input0.app",
    "~/Library/Caches/com.input0",
    "~/Library/Logs/com.input0",
    "~/Library/WebKit/com.input0",
  ]
end
