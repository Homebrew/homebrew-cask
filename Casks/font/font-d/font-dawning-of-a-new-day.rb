cask "font-dawning-of-a-new-day" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dawningofanewday/DawningofaNewDay.ttf",
      verified: "github.com/google/fonts/"
  name "Dawning of a New Day"
  homepage "https://fonts.google.com/specimen/Dawning+of+a+New+Day"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dawning of a New Day",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DawningofaNewDay.ttf"

  # No zap stanza required
end
