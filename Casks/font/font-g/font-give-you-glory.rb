cask "font-give-you-glory" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/giveyouglory/GiveYouGlory.ttf",
      verified: "github.com/google/fonts/"
  name "Give You Glory"
  homepage "https://fonts.google.com/specimen/Give+You+Glory"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Give You Glory",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GiveYouGlory.ttf"

  # No zap stanza required
end
