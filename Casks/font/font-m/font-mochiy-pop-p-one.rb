cask "font-mochiy-pop-p-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mochiypoppone/MochiyPopPOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mochiy Pop P One"
  homepage "https://fonts.google.com/specimen/Mochiy+Pop+P+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mochiy Pop P One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MochiyPopPOne-Regular.ttf"

  # No zap stanza required
end
