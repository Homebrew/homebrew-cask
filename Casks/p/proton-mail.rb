cask "proton-mail" do
  version "1.16.1"
  sha256 "9e6926d6dc6c6caa5404fb4b4e98d94a12ba32b2201b33e938ef46f8bb40bee9"

  url "https://proton.me/download/mail/macos/#{version}/ProtonMail-desktop.dmg"
  name "Proton Mail"
  desc "Client for Proton Mail and Proton Calendar"
  homepage "https://proton.me/mail"

  livecheck do
    url "https://proton.me/download/mail/macos/version.json"
    strategy :json do |json|
      json["Releases"]&.map do |item|
        next unless item["CategoryName"]&.match?("Stable")

        item["Version"]
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Proton Mail.app"

  uninstall delete: "/Applications/Proton Mail Uninstaller.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ch.protonmail.desktop.sfl*",
    "~/Library/Application Support/Proton Mail",
    "~/Library/Caches/ch.protonmail.desktop",
    "~/Library/Caches/ch.protonmail.desktop.ShipIt",
    "~/Library/HTTPStorages/ch.protonmail.desktop",
    "~/Library/Logs/Proton Mail",
    "~/Library/Preferences/ch.protonmail.desktop.plist",
    "~/Library/Saved Application State/ch.protonmail.desktop.savedState",
  ]
end
