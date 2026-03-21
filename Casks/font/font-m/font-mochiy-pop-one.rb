cask "font-mochiy-pop-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mochiypopone/MochiyPopOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mochiy Pop One"
  homepage "https://fonts.google.com/specimen/Mochiy+Pop+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mochiy Pop One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MochiyPopOne-Regular.ttf"

  # No zap stanza required
end
