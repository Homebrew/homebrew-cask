cask "annotate" do
  version "1.3.1"
  sha256 "3a4ea15463c541eaa93faacfa6ba72e8009bd247acc8d670f30b4f3d997bc70d"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"
  name "Annotate"
  desc "Keyboard-driven screen annotation tool"
  homepage "https://github.com/epilande/Annotate/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Annotate.app"

  zap trash: [
    "~/Library/Caches/com.epilande.Annotate",
    "~/Library/HTTPStorages/com.epilande.Annotate",
    "~/Library/Preferences/com.epilande.Annotate.plist",
    "~/Library/Saved Application State/com.epilande.Annotate.savedState",
  ]
end
