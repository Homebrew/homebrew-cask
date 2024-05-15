cask "font-grape-nuts" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grapenuts/GrapeNuts-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grape Nuts"
  desc "Derived from a well-known breakfast cereal that dates back to the late 1800s"
  homepage "https://fonts.google.com/specimen/Grape+Nuts"

  font "GrapeNuts-Regular.ttf"

  # No zap stanza required
end
