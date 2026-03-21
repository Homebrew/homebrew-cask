cask "font-tangerine" do
  version "1.3"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tangerine"
  name "Tangerine"
  homepage "https://fonts.google.com/specimen/Tangerine"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tangerine",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tangerine-Bold.ttf"
  font "Tangerine-Regular.ttf"

  # No zap stanza required
end
