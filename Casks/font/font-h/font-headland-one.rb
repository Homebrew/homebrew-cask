cask "font-headland-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/headlandone/HeadlandOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Headland One"
  homepage "https://fonts.google.com/specimen/Headland+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Headland One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HeadlandOne-Regular.ttf"

  # No zap stanza required
end
