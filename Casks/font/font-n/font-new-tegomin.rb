cask "font-new-tegomin" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/newtegomin/NewTegomin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "New Tegomin"
  homepage "https://fonts.google.com/specimen/New+Tegomin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "New Tegomin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NewTegomin-Regular.ttf"

  # No zap stanza required
end
