cask "font-castoro" do
  version "2.04"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/castoro"
  name "Castoro"
  homepage "https://fonts.google.com/specimen/Castoro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Castoro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Castoro-Italic.ttf"
  font "Castoro-Regular.ttf"

  # No zap stanza required
end
