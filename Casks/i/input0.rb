cask "input0" do
  version "0.6.0"
  sha256 "686f3f91a3cccd0ab67ed7b1bd567d981cd364ebc92bb843d63198b9e3bf38b5"

  url "https://github.com/10xChengTu/input0/releases/download/v#{version}/Input0_#{version}_aarch64.dmg",
      verified: "github.com/10xChengTu/input0/"
  name "Input 0"
  desc "Voice input tool with AI transcription"
  homepage "https://input0.com/"

  depends_on macos: :big_sur

  app "Input0.app"

  zap trash: [
    "~/Library/Application Support/com.input0.app",
    "~/Library/Caches/com.input0",
    "~/Library/Logs/com.input0",
    "~/Library/WebKit/com.input0",
  ]
end
