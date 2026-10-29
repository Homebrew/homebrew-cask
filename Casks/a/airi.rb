cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "f378e83fe623301c75ce81a0d3e5b50da9f211444eab580b4333b0c5f72f9757",
         intel: "1327cb8546e8c76766b1e87a9a381a2a9a3b7157008741f3a9377f7f0ecc447d"

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

  depends_on macos: :monterey

  app "airi.app"

  uninstall quit: "ai.moeru.airi"

  zap trash: [
    "~/Library/Application Support/ai.moeru.airi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.moeru.airi.sfl*",
    "~/Library/Preferences/ai.moeru.airi.plist",
  ]
end
