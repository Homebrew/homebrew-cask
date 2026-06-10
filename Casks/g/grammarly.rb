cask "grammarly" do
  version "1.169.1.0"
  sha256 "e486fb425b7a2b631e56190273517518ad137705475e0be84aed247173b30b75"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly"
  desc "Writing assistant for grammar, spelling, and style suggestions"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/appcast.xml"
    regex(%r{versions/(\d+(?:\.\d+)+)/Grammarly\.dmg}i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "Grammarly Installer.app"

  zap trash: [
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/HTTPStorages/com.grammarly.ProjectLlama",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
    "~/Library/Saved Application State/com.grammarly.ProjectLlama.savedState",
  ]
end
