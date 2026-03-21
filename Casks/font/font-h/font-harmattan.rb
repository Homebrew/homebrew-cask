cask "font-harmattan" do
  version "4.400"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/harmattan"
  name "Harmattan"
  homepage "https://fonts.google.com/specimen/Harmattan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Harmattan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Harmattan-Bold.ttf"
  font "Harmattan-Medium.ttf"
  font "Harmattan-Regular.ttf"
  font "Harmattan-SemiBold.ttf"

  # No zap stanza required
end
