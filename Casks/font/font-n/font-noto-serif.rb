cask "font-noto-serif" do
  version "2.013"
  sha256 "fb4c6c75f10365f63b5c8ad5a1864ebe46dd0c70c40d0461cb0dc1b1b7c13a35"

  url "https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSerif-v#{version}/NotoSerif-v#{version}.zip",
      verified: "github.com/notofonts/"
  name "Noto Sans"
  homepage "https://notofonts.github.io/"

  livecheck do
    url :url
    regex(/^NotoSerif-v?(\d+(?:\.\d+)+)$/i)
  end

  font "NotoSerif/unhinted/variable/NotoSerif-Italic[wdth,wght].ttf"
  font "NotoSerif/unhinted/variable/NotoSerif[wdth,wght].ttf"
end
