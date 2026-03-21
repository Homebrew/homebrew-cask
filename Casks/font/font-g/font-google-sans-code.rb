cask "font-google-sans-code" do
  version "6.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/googlesanscode"
  name "Google Sans Code"
  homepage "https://fonts.google.com/specimen/Google+Sans+Code"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Google Sans Code",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GoogleSansCode-Italic[wght].ttf"
  font "GoogleSansCode[wght].ttf"

  # No zap stanza required
end
