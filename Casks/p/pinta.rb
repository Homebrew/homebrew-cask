cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.2"
  sha256 arm:   "a5f3b6472deacd8b6ad7ddb52841c092ae5f5ee2308da02cba902b5306b9e59e",
         intel: "f9952ea89e865f805cf8f2f5e7c4db64bfe074090f5a9a809c679ec5ba7191fd"

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta-macos-#{arch}.dmg",
      verified: "github.com/PintaProject/Pinta/"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  no_autobump! because: :requires_manual_review

  app "Pinta.app"

  zap trash: [
    "~/Library/Preferences/com.ximian.pinta.plist",
    "~/Library/Saved Application State/com.ximian.pinta.savedState",
  ]
end
