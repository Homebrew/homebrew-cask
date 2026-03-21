cask "font-fraunces" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fraunces"
  name "Fraunces"
  homepage "https://fonts.google.com/specimen/Fraunces"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fraunces",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fraunces-Italic[SOFT,WONK,opsz,wght].ttf"
  font "Fraunces[SOFT,WONK,opsz,wght].ttf"

  # No zap stanza required
end
