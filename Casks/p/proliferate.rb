cask "proliferate" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.19"
  sha256 arm:   "7303e75d90059b080ab4cef99742e6ed0601257b057698637a07208f08dbfde7",
         intel: "83161fa9c3aa8b0fdbd3076fd0260189d232af2d666e608c1bda599673184ee5"

  url "https://downloads.proliferate.com/desktop/stable/Proliferate_#{version}_#{arch}.dmg"
  name "Proliferate"
  desc "Open-source AI IDE for running coding agents in parallel"
  homepage "https://proliferate.com/"

  livecheck do
    url "https://downloads.proliferate.com/desktop/stable/installers.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Proliferate.app"

  zap trash: [
    "~/Library/Application Support/com.proliferate.app",
    "~/Library/Caches/com.proliferate.app",
    "~/Library/Preferences/com.proliferate.app.plist",
    "~/Library/Saved Application State/com.proliferate.app.savedState",
  ]
end
