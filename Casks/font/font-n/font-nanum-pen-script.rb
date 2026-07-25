cask "font-nanum-pen-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nanumpenscript/NanumPenScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nanum Pen Script"
  homepage "https://fonts.google.com/specimen/Nanum+Pen+Script"

  font "NanumPenScript-Regular.ttf"

  # No zap stanza required
end
