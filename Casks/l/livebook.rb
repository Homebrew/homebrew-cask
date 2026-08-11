cask "livebook" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.9"
  sha256 arm:          "ec36260c09ade0c8e724cf9c707b16e2997af9046e7e2d8f223008e51dc85d76",
         intel:        "c361c66c33d5e974775bedb74920c0752c56003f3498c71c88961db15cae47a4",
         arm64_linux:  "91c83787b1493b2ea91ca41efe4dfe052d90ed96d240ec5e612f891047800590",
         x86_64_linux: "a6ef1b0a1b4213b4939cc8e0512a650e13b9ceff207ae29b62679787122f4b0c"

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

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-#{os}-#{arch}.#{url_end}"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  auto_updates true
  conflicts_with cask: "livebook@nightly"
end
