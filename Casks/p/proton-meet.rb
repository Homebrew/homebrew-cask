cask "proton-meet" do
  version "1.0.7"
  sha256 "beed0ac38756179b0608f0857db814f1ee9e164753ea43501e2f487fe47346bf"

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
