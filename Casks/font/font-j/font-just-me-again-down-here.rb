cask "font-just-me-again-down-here" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/justmeagaindownhere/JustMeAgainDownHere.ttf",
      verified: "github.com/google/fonts/"
  name "Just Me Again Down Here"
  homepage "https://fonts.google.com/specimen/Just+Me+Again+Down+Here"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Just Me Again Down Here",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JustMeAgainDownHere.ttf"

  # No zap stanza required
end
