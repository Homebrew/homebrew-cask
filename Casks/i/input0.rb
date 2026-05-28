cask "input0" do
  version "0.6.1"
  sha256 "8581c22c7bc8f5fa2d05ba84ee1f85ccd80f5d4af7bf07798af6f3d53c9f08e0"

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
