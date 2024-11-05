cask "localsend" do
  version "1.16.1"
  sha256 "920ab7028ca90dd47093d6ca6b5ce3509a38b471d46c36488341b4464f52de7e"

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}.dmg",
      verified: "github.com/localsend/localsend/"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"

  depends_on macos: ">= :big_sur"

  app "LocalSend.app"

  zap trash: [
    "~/Library/Application Scripts/org.localsend.localsendApp",
    "~/Library/Containers/org.localsend.localsendApp",
    "~/Library/Preferences/org.localsend.localsendApp.plist",
    "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
  ]
end
