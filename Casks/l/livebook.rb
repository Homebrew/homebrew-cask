cask "livebook" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.10"
  sha256 arm:          "c234425512ed992acc30eb06febf36707418185dffd1373f71baa810354d430f",
         intel:        "3226c86444028a4fa464781717ef7af3cd9ab0a3a1fc9c588c4d2e2a35d3adb6",
         arm64_linux:  "ecbcd18f0909efbe790adbc1472cf6c1c6bd82ef027d2990d6954eec785b4148",
         x86_64_linux: "7e60b86ab24f1c0fc48bd9fb82088e1f27de501e8e68f0ba3171176f62e5f34c"

  on_macos do
    app "Livebook.app"

    zap trash: [
      "~/Library/Application Support/livebook",
      "~/Library/Logs/Livebook.log",
    ]
  end
  on_linux do
    app_image "Livebook-linux-#{arch}.AppImage", target: "Livebook.AppImage"

    zap trash: [
      "~/.local/share/livebook",
      "~/.local/share/Livebook",
    ]
  end

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-#{os}-#{arch}.#{url_end}"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  auto_updates true
  conflicts_with cask: "livebook@nightly"
end
