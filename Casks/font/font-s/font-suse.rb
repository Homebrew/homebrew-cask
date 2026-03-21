cask "font-suse" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/suse"
  name "SUSE"
  homepage "https://fonts.google.com/specimen/SUSE"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "SUSE",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SUSE-Italic[wght].ttf"
  font "SUSE[wght].ttf"

  # No zap stanza required
end
