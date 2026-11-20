cask "general-software-fresh" do
  version "1.0.5"
  sha256 "10f98ac0fc06f865734d3154a6f5e16fb67236805d214ef5d6cc178506d20d3a"

  url "https://download.general.software/fresh/#{version}/Fresh.dmg"
  name "Fresh"
  desc "Short-term memory for screenshots, downloads, clipboard, and desktop files"
  homepage "https://general.software/fresh/"

  livecheck do
    url "https://bs.general.software/api/appcast/fresh"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "fresh"
  depends_on macos: :sonoma

  app "Fresh.app"

  zap trash: [
    "~/Library/Application Support/Fresh",
    "~/Library/Caches/com.generalsoftwarecorp.freshmac",
    "~/Library/HTTPStorages/com.generalsoftwarecorp.freshmac",
    "~/Library/Preferences/com.generalsoftwarecorp.freshmac.plist",
    "~/Library/WebKit/com.generalsoftwarecorp.freshmac",
  ]
end
