cask "ethui" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "amd64.AppImage"

  version "1.27.0"

  on_macos do
    sha256 "7a5eb15dfc66556ee6f2ec0480605db587ef74b6a4f9e9e028df73d296b90623"

    app "ethui.app"

    zap trash: [
      "~/Library/Application Support/ethui",
      "~/Library/Caches/ethui",
      "~/Library/Saved Application State/dev.ethui.savedState",
    ]
  end
  on_linux do
    sha256 "ef54899508849ec93f718a6ef8bb167ac2e28c9bb858c3c0bece28ea6dfc5a0e"

    depends_on arch: :x86_64

    app_image "ethui_#{version}_amd64.AppImage", target: "ethui.AppImage"
  end

  url "https://github.com/ethui/ethui/releases/download/v#{version}/ethui_#{version}_#{url_end}",
      verified: "github.com/ethui/ethui/"
  name "ethui"
  desc "Ethereum development toolkit with wallet and anvil support"
  homepage "https://ethui.dev/"
end
