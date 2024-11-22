cask "font-noto-serif" do
  version "2.015"
  sha256 "0e9a43c8a4b94ac76f55069ed1d7385bbcaf6b99527a94deb5619e032b7e76c1"

  url "https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSerif-v#{version}/NotoSerif-v#{version}.zip",
      verified: "github.com/notofonts/"
  name "Noto Sans"
  homepage "https://notofonts.github.io/"

  livecheck do
    url :url
    regex(/^NotoSerif-v?(\d+(?:\.\d+)+)$/i)
  end

  font "NotoSerif/unhinted/variable-ttf/NotoSerif-Italic[wdth,wght].ttf"
  font "NotoSerif/unhinted/variable-ttf/NotoSerif[wdth,wght].ttf"

  # No zap stanza required
end
