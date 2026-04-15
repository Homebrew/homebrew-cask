cask "google-gemini" do
  version "1.45.6.217"
  sha256 :no_check

  url "https://dl.google.com/release2/j33ro/release/Gemini.dmg",
      verified: "dl.google.com/"
  name "Gemini"
  desc "Native desktop AI assistant from Google"
  homepage "https://gemini.google/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.google.GeminiMacOS"]&.version
    end
  end

  auto_updates true
  depends_on arch:  :arm64,
             macos: ">= :sequoia"

  app "Gemini.app"

  uninstall quit: [
    "com.google.GeminiMacOS",
    "com.google.GeminiMacOS.launcher",
  ]

  zap launchctl: [
        "com.google.GoogleUpdater.wake.system",
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
        "com.google.keystone.system.agent",
        "com.google.keystone.system.xpcservice",
        "com.google.keystone.xpcservice",
      ],
      pkgutil:   "com.google.pkg.Keystone",
      trash:     [
        "~/Library/Application Support/com.google.GeminiMacOS",
        "~/Library/Application Support/com.google.GeminiMacOS.launcher",
        "~/Library/Caches/com.google.GeminiMacOS",
        "~/Library/Caches/com.google.GeminiMacOS.launcher",
        "~/Library/Google/GoogleSoftwareUpdate/Actives/com.google.GeminiMacOS",
        "~/Library/HTTPStorages/com.google.GeminiMacOS",
        "~/Library/Preferences/com.google.GeminiMacOS.plist",
      ]
end
