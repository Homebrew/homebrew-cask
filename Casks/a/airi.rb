cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "99d224486692f3d85f0256009cdf317d74e7eeb1879be5d602b17ac10475137c",
         intel: "9d122efd97c262846dac44f12e9c86265ab12ed0b4c3b6a64ca1200d5e148e24"

  url "https://github.com/moeru-ai/airi/releases/download/v#{version}/AIRI-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/moeru-ai/airi/"
  name "AIRI"
  desc "AI companion and VTuber application"
  homepage "https://airi.moeru.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AIRI.app"

  zap trash: [
    "~/Library/Application Support/ai.moeru.airi",
    "~/Library/Preferences/ai.moeru.airi.plist",
  ]
end
