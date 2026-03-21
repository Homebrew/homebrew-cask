cask "font-donegal-one" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/donegalone/DonegalOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Donegal One"
  homepage "https://fonts.google.com/specimen/Donegal+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Donegal One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DonegalOne-Regular.ttf"

  # No zap stanza required
end
