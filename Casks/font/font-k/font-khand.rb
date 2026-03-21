cask "font-khand" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/khand"
  name "Khand"
  homepage "https://fonts.google.com/specimen/Khand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Khand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Khand-Bold.ttf"
  font "Khand-Light.ttf"
  font "Khand-Medium.ttf"
  font "Khand-Regular.ttf"
  font "Khand-SemiBold.ttf"

  # No zap stanza required
end
