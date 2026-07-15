cask "openhuman" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.61.2"
  sha256 arm:          "2e10f4c7c5c59804cb56a92ffe75861b5f1b6107ed6ed3686223941c8bac57b4",
         x86_64:       "1fced2134870466d2330f799776261828947f97b616a4f17fa91db74083ccd3e",
         x86_64_linux: "ad6dcf5667a71749515a7983b91820a45cab4821ad6d30962c8d6dc61ad76cee",
         arm64_linux:  "e6222c7036b52a1ae0e3f9342d6ee7ae7ef57cdb9fb7f0cbe96a61bbfd8323e1"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/tinyhumansai/openhuman/releases/download/v#{version}/OpenHuman_#{version}_#{arch}#{url_end}",
      verified: "github.com/tinyhumansai/openhuman/"
  name "OpenHuman"
  desc "Personal AI assistant with local memory and integrations"
  homepage "https://tinyhumans.ai/openhuman"

  on_macos do
    auto_updates true

    app "OpenHuman.app"

    uninstall quit: "com.openhuman.app"

    zap trash: [
      "~/.openhuman",
      "~/Library/Preferences/com.openhuman.app.plist",
    ]
  end

  on_linux do
    app_image "OpenHuman_#{version}_#{arch}.AppImage", target: "OpenHuman.AppImage"
  end
end
