cask "font-mukta-malar" do
  version "2.538"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/muktamalar"
  name "Mukta Malar"
  homepage "https://fonts.google.com/specimen/Mukta+Malar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mukta Malar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MuktaMalar-Bold.ttf"
  font "MuktaMalar-ExtraBold.ttf"
  font "MuktaMalar-ExtraLight.ttf"
  font "MuktaMalar-Light.ttf"
  font "MuktaMalar-Medium.ttf"
  font "MuktaMalar-Regular.ttf"
  font "MuktaMalar-SemiBold.ttf"

  # No zap stanza required
end
