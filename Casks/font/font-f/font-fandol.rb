cask "font-fandol" do
  version "0.4"
  sha256 :no_check

  url "https://mirrors.ctan.org/fonts/fandol.zip"
  name "Fandol"
  homepage "https://ctan.org/pkg/fandol"

  livecheck do
    url :homepage
    regex(/Version.*?>\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  font "fandol/FandolFang-Regular.otf"
  font "fandol/FandolHei-Bold.otf"
  font "fandol/FandolHei-Regular.otf"
  font "fandol/FandolKai-Regular.otf"
  font "fandol/FandolSong-Bold.otf"
  font "fandol/FandolSong-Regular.otf"

  zap :not_required
end
