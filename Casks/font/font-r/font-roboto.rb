cask "font-roboto" do
  version "3.015"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/roboto"
  name "Roboto"
  homepage "https://fonts.google.com/specimen/Roboto"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Roboto",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Roboto-Italic[wdth,wght].ttf"
  font "Roboto[wdth,wght].ttf"

  # No zap stanza required
end
