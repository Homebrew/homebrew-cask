cask "font-astloch" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/astloch"
  name "Astloch"
  homepage "https://fonts.google.com/specimen/Astloch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Astloch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Astloch-Bold.ttf"
  font "Astloch-Regular.ttf"

  # No zap stanza required
end
