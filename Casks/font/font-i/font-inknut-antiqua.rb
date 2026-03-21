cask "font-inknut-antiqua" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inknutantiqua"
  name "Inknut Antiqua"
  homepage "https://fonts.google.com/specimen/Inknut+Antiqua"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inknut Antiqua",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "InknutAntiqua-Black.ttf"
  font "InknutAntiqua-Bold.ttf"
  font "InknutAntiqua-ExtraBold.ttf"
  font "InknutAntiqua-Light.ttf"
  font "InknutAntiqua-Medium.ttf"
  font "InknutAntiqua-Regular.ttf"
  font "InknutAntiqua-SemiBold.ttf"

  # No zap stanza required
end
