cask "legcord" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "1.3.0"
  sha256 arm:          "02b3a74e859feaeaf4a872e096ba2dba2da72fa7d970215b8efe71edd32298b5",
         intel:        "02b3a74e859feaeaf4a872e096ba2dba2da72fa7d970215b8efe71edd32298b5",
         arm64_linux:  "00056df070e2470d57c67348ab783de934cd73badf22f0ed0fca3733196180c5",
         x86_64_linux: "226937a481f507f9aa92a6066b68a986e4cfdc5b04dfbb6f4ceb2773a19bd489"

  on_macos do
    depends_on macos: :monterey

    app "Legcord.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
      "~/Library/Application Support/legcord",
      "~/Library/Preferences/app.legcord.Legcord.plist",
      "~/Library/Saved Application State/app.legcord.Legcord.savedState",
    ]
  end
  on_linux do
    app_image "Legcord-#{version}-linux-#{arch}.AppImage", target: "Legcord.AppImage"

    zap trash: "~/.config/legcord"
  end

  url "https://github.com/legcord/legcord/releases/download/v#{version}/Legcord-#{version}-#{os}"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url "https://legcord.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end
end
