cask "proton-meet" do
  version "1.0.8"
  sha256 "8224debebb9da5cdca6d57eecd4ad53906eb44d82171ecc814706cc06c4ab35b"

  url "https://proton.me/download/meet/macos/#{version}/ProtonMeet-desktop.dmg"
  name "Proton Meet"
  desc "Desktop client for Proton Meet"
  homepage "https://proton.me/meet"

  livecheck do
    url "https://proton.me/download/meet/macos/version.json"
    strategy :json do |json|
      json["Releases"]&.map do |item|
        next unless item["CategoryName"]&.match?("Stable")

        item["Version"]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Proton Meet.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ch.protonmeet.desktop.sfl*",
    "~/Library/Application Support/Proton Meet",
    "~/Library/Logs/Proton Meet",
    "~/Library/Preferences/ch.protonmeet.desktop.plist",
  ]
end
