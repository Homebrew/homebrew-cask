cask "input0" do
  version "0.5.0"
  sha256 "cb2ed07bca27f8b103733e6a343d05f8776c204ef35ca04f97fd6c32d21e3402"

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
