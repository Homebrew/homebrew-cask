cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1"
  sha256 arm:   "fa4323b465fdb593fda298c16ec9f9335de9038cdf38c4f3a86e13b132ce1f48",
         intel: "e9cea6fadf0a077cc30fd6f0cc707a08ec99d3853e0930528749a9d805f903e9"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta-macos-#{arch}.dmg",
      verified: "github.com/PintaProject/Pinta/"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  app "Pinta.app"

  zap trash: [
    "~/Library/Preferences/com.ximian.pinta.plist",
    "~/Library/Saved Application State/com.ximian.pinta.savedState",
  ]
end
