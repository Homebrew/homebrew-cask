cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "22d442bbb902143deb649633ed26f5e2e705e2bc2fbcba152ff58b0541d6233a",
         intel: "628ac9e31cc8a1e0f293cd500ab3ffc5371198d16da0df03df0d2622dc936503"

  url "https://electron-update.fathom.video/download/file/Fathom-darwin-#{arch}-#{version}.dmg"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/"
    regex(%r{href=.*?/releases/tag/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: :monterey

  app "Fathom.app"

  uninstall quit: [
    "Fathom Helper",
    "Fathom",
  ]

  zap trash: [
    "~/Library/Application Support/Fathom",
    "~/Library/Logs/Fathom",
  ]
end
