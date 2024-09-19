cask "font-noto-serif" do
  version "2.014"
  sha256 "6abce0a80df4ef6d5a944d60c81099364481d6a7015b0721d87bc4c16acc1fd3"

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
