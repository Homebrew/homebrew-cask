cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "a748a5759c8f00dd4a34a05b6330e69b8f1e6e2f6b341c77daca16a8f22a538a",
         intel: "b195723f207d1cd2d5b4249f7a8868f86d70cdf3a48ee764fc9409bd5c5aef8c"

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
