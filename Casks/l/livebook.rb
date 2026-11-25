cask "livebook" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.11"
  sha256 arm:          "d862f6751419237be5c666edea008a9224d436512a382e4762662e4f82259af1",
         intel:        "2640f2db5c33e0fda4ba9e9e796b89acadfdb3f5f0d06c86e1bf7d3b5bb2bc53",
         arm64_linux:  "e63c1cc31403559510f3adfa9396fb2ec7c97ea7fc652e218b6ca4a5ef91718e",
         x86_64_linux: "f0034cbac4a1a301bf846bd90de384810ff8729e2386837b070717d5f311253b"

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
