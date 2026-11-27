cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta68"
  sha256 arm:   "829880a57df0744fe8ac6881dc7e186f789ff423bd6164826ace45eec9f25354",
         intel: "bcf08cf613137f0e6135240ff65554b9bf00c6132f30aa6ef2430ac4a55b8892"

  url "https://releases.threema.ch/desktop/#{version}/threema-work-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema Work"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/en/download/threema-work/desktop-beta"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-work-macos.json"
    strategy :json do |json|
      json.dig("latestVersion", "version")
    end
  end

  depends_on macos: :ventura

  app "Threema Work Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ch.threema.threema-work-desktop.sfl*",
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-work-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-work-desktop.savedState",
  ]
end
