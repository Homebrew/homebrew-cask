cask "font-abeezee" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/abeezee"
  name "ABeeZee"
  homepage "https://fonts.google.com/specimen/ABeeZee"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "ABeeZee",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ABeeZee-Italic.ttf"
  font "ABeeZee-Regular.ttf"

  # No zap stanza required
end
