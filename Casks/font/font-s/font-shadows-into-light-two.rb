cask "font-shadows-into-light-two" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shadowsintolighttwo/ShadowsIntoLightTwo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shadows Into Light Two"
  homepage "https://fonts.google.com/specimen/Shadows+Into+Light+Two"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shadows Into Light Two",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShadowsIntoLightTwo-Regular.ttf"

  # No zap stanza required
end
