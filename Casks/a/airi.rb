cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 "a44156b7810b7f54e74d8b6c28bb757a4af8ff17c75b7b854804b3a971fa1e3a"

  url "https://github.com/moeru-ai/airi/releases/download/v#{version}/AIRI-#{version}-darwin-#{arch}.dmg"
  name "AIRI"
  desc "AI companion and VTuber application"
  homepage "https://airi.moeru.ai/"

  # The latest release on GitHub may not always be a stable version, so we check
  # the upstream download page until unstable versions are consistently marked
  # as pre-release on GitHub.
  livecheck do
    url "https://airi.moeru.ai/docs/en/docs/overview/versions"
    regex(%r{/releases/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "airi.app"

  uninstall quit: "ai.moeru.airi"

  zap trash: [
    "~/Library/Application Support/ai.moeru.airi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.moeru.airi.sfl*",
    "~/Library/Preferences/ai.moeru.airi.plist",
  ]
end
