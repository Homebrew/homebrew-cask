cask "postbird" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.2"
  sha256 arm:          "d9ff6a3ea3a4002f7e3b77363aee365e75ca8b27a4128e868ef4fa571574bbc7",
         intel:        "eb1e70b36aa19ce5b55452ea1a89e24d6795b570ca35d975c7ab88ef28d034d3",
         arm64_linux:  "3482cca5fbd5659bdf38abd58e8c1072da1d83c5ac2aa09fc221a986f0739ad9",
         x86_64_linux: "7f9db5b8076c7b91563ae134c0e6bcea8c53672801c52db3b95640cc68e510c7"

  on_macos do
    depends_on macos: :sonoma

    app "Postbird.app"

    uninstall launchctl: "application.org.paxa.postbird.*",
              quit:      "org.paxa.postbird"

    zap trash: [
      "~/Library/Application Support/org.paxa.postbird",
      "~/Library/Application Support/Postbird",
      "~/Library/Preferences/com.electron.postbird.plist",
      "~/Library/Preferences/org.paxa.postbird.plist",
      "~/Library/Saved Application State/com.electron.postbird.savedState",
      "~/Library/WebKit/org.paxa.postbird",
    ]
  end
  on_linux do
    app_image "Postbird-#{os}-#{arch}.#{url_end}", target: "Postbird.AppImage"

    zap trash: "~/.local/share/org.paxa.postbird"
  end

  url "https://github.com/Paxa/postbird/releases/download/v#{version}/Postbird-#{os}-#{arch}.#{url_end}"
  name "Postbird"
  desc "PostgreSQL GUI client"
  homepage "https://github.com/Paxa/postbird"

  auto_updates true
end
