cask "font-kumar-one-outline" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kumaroneoutline/KumarOneOutline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kumar One Outline"
  homepage "https://fonts.google.com/specimen/Kumar+One+Outline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kumar One Outline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KumarOneOutline-Regular.ttf"

  # No zap stanza required
end
