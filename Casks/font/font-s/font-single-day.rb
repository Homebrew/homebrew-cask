cask "font-single-day" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/singleday/SingleDay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Single Day"
  homepage "https://fonts.google.com/specimen/Single+Day"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Single Day",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SingleDay-Regular.ttf"

  # No zap stanza required
end
