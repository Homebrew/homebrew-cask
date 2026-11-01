cask "open-webui" do
  arch arm:   on_system_conditional(macos: "-arm64", linux: "_arm64"),
       intel: on_system_conditional(macos: "-x64", linux: "_x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.1.0"
  sha256 arm:          "3f0f816af438e3697a256b787f8966f730e32c142dbf3f6603f897aecc3a5d86",
         intel:        "75642aa09333bf6e6fbdde002d9119ba14d0854c0800c02ac112bfa279bc81f3",
         arm64_linux:  "686d27df470acc14e5225079d82f042627808523bd22fb6a3f1ac0c289959977",
         x86_64_linux: "3fa72f1866dfaa472b34e494960ae64c148dbb1f1222661e3e5fff415e262636"

  on_macos do
    depends_on macos: :monterey

    app "Open WebUI.app"

    zap trash: "~/Library/Application Support/open-webui"
  end
  on_linux do
    app_image "open-webui#{arch}.AppImage"

    zap trash: "~/.config/open-webui"
  end

  url "https://github.com/open-webui/desktop/releases/download/v#{version}/open-webui#{arch}.#{os}"
  name "Open WebUI"
  desc "Desktop application for Open WebUI"
  homepage "https://openwebui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
