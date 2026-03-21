cask "font-jolly-lodger" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jollylodger/JollyLodger-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jolly Lodger"
  homepage "https://fonts.google.com/specimen/Jolly+Lodger"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jolly Lodger",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JollyLodger-Regular.ttf"

  # No zap stanza required
end
