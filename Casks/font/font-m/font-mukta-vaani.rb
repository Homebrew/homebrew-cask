cask "font-mukta-vaani" do
  version "2.538"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/muktavaani"
  name "Mukta Vaani"
  homepage "https://fonts.google.com/specimen/Mukta+Vaani"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mukta Vaani",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MuktaVaani-Bold.ttf"
  font "MuktaVaani-ExtraBold.ttf"
  font "MuktaVaani-ExtraLight.ttf"
  font "MuktaVaani-Light.ttf"
  font "MuktaVaani-Medium.ttf"
  font "MuktaVaani-Regular.ttf"
  font "MuktaVaani-SemiBold.ttf"

  # No zap stanza required
end
