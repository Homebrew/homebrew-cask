cask "font-scheherazade" do
  version "2.100"
  sha256 "251c8817ceb87d9b661ce1d5b49e732a0116add10abc046be4b8ba5196e149b5"

  url "https://software.sil.org/downloads/r/scheherazade/Scheherazade-#{version}.zip"
  name "Scheherazade"
  homepage "https://software.sil.org/scheherazade/"

  livecheck do
    url "https://software.sil.org/scheherazade/download/previous-versions/"
    regex(/href=.*?Scheherazade[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "Scheherazade-#{version}/Scheherazade-Bold.ttf"
  font "Scheherazade-#{version}/Scheherazade-Regular.ttf"

  # No zap stanza required
end
