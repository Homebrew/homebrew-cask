cask "crisp" do
  version "1.5.0"
  sha256 "c112a197ba03c09ac9331a8e23bb17dc65c9d49ea8070de1aba619bcb8d152d6"

  url "https://github.com/didriksg/Crisp/releases/download/v#{version}/Crisp.dmg"
  name "Crisp"
  desc "Menu bar display manager: DDC brightness, HiDPI, presets, virtual displays"
  homepage "https://crispmac.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Crisp.app"

  uninstall quit:       "com.crisp.app",
            login_item: "Crisp"

  zap trash: [
    "~/Library/Application Support/Crisp",
    "~/Library/Caches/com.crisp.app",
    "~/Library/Caches/com.crisp.app.sparkle",
    "~/Library/HTTPStorages/com.crisp.app",
    "~/Library/Preferences/com.crisp.app.plist",
  ]
end
