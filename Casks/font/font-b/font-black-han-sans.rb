cask "font-black-han-sans" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blackhansans/BlackHanSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Black Han Sans"
  homepage "https://fonts.google.com/specimen/Black+Han+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Black Han Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BlackHanSans-Regular.ttf"

  # No zap stanza required
end
