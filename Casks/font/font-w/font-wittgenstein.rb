cask "font-wittgenstein" do
  version "1.500"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/wittgenstein"
  name "Wittgenstein"
  homepage "https://fonts.google.com/specimen/Wittgenstein"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Wittgenstein",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Wittgenstein-Italic[wght].ttf"
  font "Wittgenstein[wght].ttf"

  # No zap stanza required
end
