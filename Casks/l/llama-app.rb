cask "llama-app" do
  version "0.48.0"
  sha256 "02c05ca2d038cb65e3366affd15e8b31b3b507349eaa94e50fd223bc1bf39096"

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
    "~/Library/Logs/Llama",
    "~/Library/Preferences/app.llama.Llama.plist",
    "~/Library/Preferences/app.llamabarn.LlamaBarn.plist",
    "~/Library/WebKit/app.llamabarn.LlamaBarn",
  ]
end
