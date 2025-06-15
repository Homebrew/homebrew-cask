cask "font-fandol" do
  version "0.3"
  sha256 :no_check

  url "https://mirrors.ctan.org/fonts/fandol.zip"
  name "Fandol"
  homepage "https://ctan.org/pkg/fandol"

  no_autobump! because: :requires_manual_review

  livecheck do
    url :homepage
    regex(/Version.*?>\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  font "fandol/FandolBraille-Display.otf"
  font "fandol/FandolBraille-Regular.otf"
  font "fandol/FandolFang-Regular.otf"
  font "fandol/FandolHei-Bold.otf"
  font "fandol/FandolHei-Regular.otf"
  font "fandol/FandolKai-Regular.otf"
  font "fandol/FandolSong-Bold.otf"
  font "fandol/FandolSong-Regular.otf"

  # No zap stanza required
end
