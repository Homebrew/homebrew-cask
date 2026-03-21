cask "font-sahitya" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sahitya"
  name "Sahitya"
  homepage "https://fonts.google.com/specimen/Sahitya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sahitya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sahitya-Bold.ttf"
  font "Sahitya-Regular.ttf"

  # No zap stanza required
end
