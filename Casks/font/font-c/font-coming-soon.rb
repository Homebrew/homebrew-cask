cask "font-coming-soon" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/comingsoon/ComingSoon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Coming Soon"
  homepage "https://fonts.google.com/specimen/Coming+Soon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Coming Soon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ComingSoon-Regular.ttf"

  # No zap stanza required
end
