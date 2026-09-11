cask "font-isometra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/isometra/Isometra-Regular.ttf"
  name "Isometra"
  homepage "https://github.com/field2/isometra"

  font "Isometra-Regular.ttf"

  # No zap stanza required
end
