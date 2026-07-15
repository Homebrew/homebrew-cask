cask "proton-meet" do
  version "1.0.10"
  sha256 "377e8f644dbfb6b8a4dc69a38d2618a496bd14ad47d28b9eb01009ec1b729ce1"

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
  depends_on macos: :monterey

  app "Proton Meet.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ch.protonmeet.desktop.sfl*",
    "~/Library/Application Support/Proton Meet",
    "~/Library/Logs/Proton Meet",
    "~/Library/Preferences/ch.protonmeet.desktop.plist",
  ]
end
