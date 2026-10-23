cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "ca547a39394594f2b08d4811454063a943c9c30c8c82ab84cfa80647e8632179",
         intel: "fb64b692ff9c93c1c64049c5a85f2966feb6b5a6819c9a5379e865d5cec9a46c"

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
    "~/Library/Preferences/ai.moeru.airi.plist",
  ]
end
