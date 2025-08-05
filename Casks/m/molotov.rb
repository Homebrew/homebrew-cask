cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  version "7.0.0"
  sha256 arm:   "3daaeb6a8526683d4cb411b5a747ee2fff51fd5ad2724c597860fe78f69db906",
         intel: "6fca747796d63342b0135721473934cc1874c39c579ed4e977108f32e9a39b26"

  url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}Molotov-#{version}-mac.zip"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}manifest.json"
    regex(/^\D*(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["version"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :catalina"

  app "Molotov.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/tv.molotov.molotovdesktopapp.sfl*",
    "~/Library/Application Support/molotov",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/tv.molotov.MolotovDesktopApp",
    "~/Library/Logs/molotov",
    "~/Library/Preferences/tv.molotov.MolotovDesktopApp.plist",
    "~/Library/Saved Application State/tv.molotov.MolotovDesktopApp.savedState",
  ]
end
