cask "font-puppies-play" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/puppiesplay/PuppiesPlay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Puppies Play"
  homepage "https://fonts.google.com/specimen/Puppies+Play"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Puppies Play",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PuppiesPlay-Regular.ttf"

  # No zap stanza required
end
