cask "llama-app" do
  version "0.37.0"
  sha256 "d83c6501c769b31f1df9f0e51c0411381c5219cb1a088ae4f3908c4cef571ce2"

  url "https://github.com/ggml-org/Llama-macOS/releases/download/#{version}/Llama.dmg"
  name "Llama"
  desc "Menu bar app for running local LLMs"
  homepage "https://github.com/ggml-org/Llama-macOS"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Llama.app"

  uninstall quit: "app.llama.Llama"

  zap trash: [
    "~/.llama-app",
    "~/.local/bin/llama",
    "~/Library/Application Support/Llama",
    "~/Library/Application Support/LlamaBarn",
    "~/Library/Caches/app.llama.Llama",
    "~/Library/Caches/app.llamabarn.LlamaBarn",
    "~/Library/Caches/SentryCrash/Llama",
    "~/Library/HTTPStorages/app.llama.Llama",
    "~/Library/HTTPStorages/app.llamabarn.LlamaBarn",
    "~/Library/HTTPStorages/app.llamabarn.LlamaBarn.binarycookies",
    "~/Library/Preferences/app.llama.Llama.plist",
    "~/Library/Preferences/app.llamabarn.LlamaBarn.plist",
    "~/Library/WebKit/app.llamabarn.LlamaBarn",
  ]
end
