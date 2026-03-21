cask "font-passion-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/passionone"
  name "Passion One"
  homepage "https://fonts.google.com/specimen/Passion+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Passion One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PassionOne-Black.ttf"
  font "PassionOne-Bold.ttf"
  font "PassionOne-Regular.ttf"

  # No zap stanza required
end
