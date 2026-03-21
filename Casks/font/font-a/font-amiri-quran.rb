cask "font-amiri-quran" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amiriquran/AmiriQuran-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Amiri Quran"
  homepage "https://fonts.google.com/specimen/Amiri+Quran"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amiri Quran",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AmiriQuran-Regular.ttf"

  # No zap stanza required
end
