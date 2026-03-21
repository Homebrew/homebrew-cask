cask "font-lobster-two" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lobstertwo"
  name "Lobster Two"
  homepage "https://fonts.google.com/specimen/Lobster+Two"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lobster Two",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LobsterTwo-Bold.ttf"
  font "LobsterTwo-BoldItalic.ttf"
  font "LobsterTwo-Italic.ttf"
  font "LobsterTwo-Regular.ttf"

  # No zap stanza required
end
