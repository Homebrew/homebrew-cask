cask "font-new-rocker" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/newrocker/NewRocker-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "New Rocker"
  homepage "https://fonts.google.com/specimen/New+Rocker"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "New Rocker",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NewRocker-Regular.ttf"

  # No zap stanza required
end
