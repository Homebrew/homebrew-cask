cask "font-epunda-sans" do
  version "2.205"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/epundasans"
  name "Epunda Sans"
  homepage "https://fonts.google.com/specimen/Epunda+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Epunda Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EpundaSans-Italic[wght].ttf"
  font "EpundaSans[wght].ttf"

  # No zap stanza required
end
