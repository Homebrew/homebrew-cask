cask "font-andika" do
  version "6.200"
  sha256 "cc9a7523fcdecf5d2e1858f8ed43bca8f1e1be1ad5f20ac81475d816a9dcf87c"

  url "https://software.sil.org/downloads/r/andika/Andika-#{version}.zip"
  name "Andika"
  homepage "https://software.sil.org/andika/"

  livecheck do
    url "https://software.sil.org/andika/download/"
    regex(/href=.*Andika[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "Andika-#{version}/Andika-Bold.ttf"
  font "Andika-#{version}/Andika-BoldItalic.ttf"
  font "Andika-#{version}/Andika-Italic.ttf"
  font "Andika-#{version}/Andika-Regular.ttf"

  # No zap stanza required
end
