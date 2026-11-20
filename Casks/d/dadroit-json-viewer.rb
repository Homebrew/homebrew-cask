cask "dadroit-json-viewer" do
  version "3.3.0,604"
  sha256 :no_check

  url "https://dadroit.com/releases/mac/DadroitJSONViewer.zip"
  name "Dadroit JSON Viewer"
  desc "JSON Viewer"
  homepage "https://dadroit.com/"

  # The upstream website uses Cloudflare protections and the zip file is
  # inaccessible outside of a browser, so this cask is effectively unusable.
  disable! date: "2026-09-27", because: :unreachable

  depends_on :macos

  app "Dadroit JSON Viewer.app"

  zap trash: [
    "~/.cache/DadroitViewer",
    "~/.config/Dadroit",
    "~/Library/Saved Application State/com.dadroit.Viewer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
