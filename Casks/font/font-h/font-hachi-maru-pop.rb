cask "font-hachi-maru-pop" do
  version "1.300"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hachimarupop/HachiMaruPop-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hachi Maru Pop"
  homepage "https://fonts.google.com/specimen/Hachi+Maru+Pop"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hachi Maru Pop",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HachiMaruPop-Regular.ttf"

  # No zap stanza required
end
