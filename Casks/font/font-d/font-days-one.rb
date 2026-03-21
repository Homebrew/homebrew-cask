cask "font-days-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/daysone/DaysOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Days One"
  homepage "https://fonts.google.com/specimen/Days+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Days One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DaysOne-Regular.ttf"

  # No zap stanza required
end
