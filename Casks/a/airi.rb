cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "80cde8f967c2c58a0e293c5022de7bab97d95ecd8dd452fe99f4f2069b673546",
         intel: "15beef0428daa01b94c6c3899f44b9ad8373fd26e69ecd541c0df00f429685d9"

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
