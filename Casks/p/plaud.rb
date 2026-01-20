cask "plaud" do
  arch arm: "arm64", intel: ""

  version "1.0.2"
  sha256 arm:   "932459fe67a923ef8de99078784c4ab55709496298f76fe26e31f718cfb36f59",
         intel: "442c6132c54f7253ee6e94d4b04b98aae3c7fbbc81a5a8416d4187337792036a"

  url "https://client-download.plaud.ai/desktop/v#{version.major}/Plaud-#{version}#{"-#{arch}" if arch.present?}.dmg"
  name "Plaud"
  desc "Desktop app for Plaud AI voice recorder"
  homepage "https://www.plaud.ai/"

  livecheck do
    url "https://client-download.plaud.ai/desktop/v1/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Plaud.app"

  zap trash: [
    "~/Library/Application Support/Plaud",
    "~/Library/HTTPStorages/ai.plaud.desktop.plaud.helper.Renderer",
    "~/Library/Preferences/ai.plaud.desktop.plaud.helper.Renderer-com.liteav.storage.global.plist",
    "~/Library/Preferences/ai.plaud.desktop.plaud.plist",
  ]
end
