cask "font-yeseva-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yesevaone/YesevaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yeseva One"
  homepage "https://fonts.google.com/specimen/Yeseva+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yeseva One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YesevaOne-Regular.ttf"

  # No zap stanza required
end
