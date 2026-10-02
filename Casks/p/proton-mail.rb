cask "proton-mail" do
  version "1.15.1"
  sha256 "5fc2daf66300b58bba53f5f0a0524a1918ad085b5b79497944b783dc70ff40e7"

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
