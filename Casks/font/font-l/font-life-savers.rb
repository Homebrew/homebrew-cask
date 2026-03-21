cask "font-life-savers" do
  version "3.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lifesavers"
  name "Life Savers"
  homepage "https://fonts.google.com/specimen/Life+Savers"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Life Savers",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LifeSavers-Bold.ttf"
  font "LifeSavers-ExtraBold.ttf"
  font "LifeSavers-Regular.ttf"

  # No zap stanza required
end
