cask "font-noto-sans-glagolitic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansglagolitic/NotoSansGlagolitic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Glagolitic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Glagolitic"

  font "NotoSansGlagolitic-Regular.ttf"

  # No zap stanza required
end
