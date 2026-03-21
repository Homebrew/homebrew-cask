cask "font-agdasima" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/agdasima"
  name "Agdasima"
  homepage "https://fonts.google.com/specimen/Agdasima"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Agdasima",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Agdasima-Bold.ttf"
  font "Agdasima-Regular.ttf"

  # No zap stanza required
end
