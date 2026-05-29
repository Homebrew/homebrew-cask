cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.2"
  sha256 arm:   "4f94ded4a8b2f8a46dadf7e2ae36eaace5858f97ff94ebec9d11e4ca004a770e",
         intel: "16b20be733d5cf81dc741d6f15c06afb41872fe194bd09ba07e1e844c03a92ef"

  url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{arch}.app.tar.gz",
      verified: "github.com/open-pencil/open-pencil/"
  name "OpenPencil"
  desc "Open-source design editor compatible with Figma"
  homepage "https://openpencil.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/net.dannote.open-pencil",
    "~/Library/Caches/net.dannote.open-pencil",
    "~/Library/Preferences/net.dannote.open-pencil.plist",
    "~/Library/Saved Application State/net.dannote.open-pencil.savedState",
  ]
end
