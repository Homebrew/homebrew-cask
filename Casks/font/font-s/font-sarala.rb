cask "font-sarala" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sarala"
  name "Sarala"
  homepage "https://fonts.google.com/specimen/Sarala"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sarala",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sarala-Bold.ttf"
  font "Sarala-Regular.ttf"

  # No zap stanza required
end
