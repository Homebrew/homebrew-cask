cask "font-mirza" do
  version "1.0010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mirza"
  name "Mirza"
  homepage "https://fonts.google.com/specimen/Mirza"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mirza",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mirza-Bold.ttf"
  font "Mirza-Medium.ttf"
  font "Mirza-Regular.ttf"
  font "Mirza-SemiBold.ttf"

  # No zap stanza required
end
