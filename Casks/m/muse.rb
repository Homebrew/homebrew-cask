cask "muse" do
  version "4.0"
  sha256 :no_check

  url "https://muse.ai/api/hatch/app-download/mac"
  name "Muse"
  desc "AI assistant for managing tasks, projects, and long-term goals"
  homepage "https://muse.ai/"

  disable! date: "2026-10-01", because: "requires a signed download URL, which is not supported by Homebrew"

  auto_updates true
  depends_on macos: :sonoma

  app "Muse.app"

  uninstall quit: "com.meta.endo"

  zap trash: [
    "~/Library/Application Support/com.meta.endo",
    "~/Library/Caches/com.meta.endo",
    "~/Library/HTTPStorages/com.meta.endo",
    "~/Library/Preferences/com.meta.endo.plist",
    "~/Library/WebKit/com.meta.endo",
  ]
end
