cask "livebook@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version :latest
  sha256 :no_check

  on_macos do
    depends_on macos: :big_sur

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

  url "https://github.com/livebook-dev/livebook/releases/download/nightly/Livebook-#{os}-#{arch}.#{url_end}"
  name "Livebook Nightly"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  conflicts_with cask: "livebook"
end
