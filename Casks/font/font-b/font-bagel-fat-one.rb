cask "font-bagel-fat-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bagelfatone/BagelFatOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bagel Fat One"
  homepage "https://fonts.google.com/specimen/Bagel+Fat+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bagel Fat One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BagelFatOne-Regular.ttf"

  # No zap stanza required
end
