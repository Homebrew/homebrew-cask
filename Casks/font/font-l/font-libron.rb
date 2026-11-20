cask "font-libron" do
  version "0.32"
  sha256 "41686314e349fd80326149b9d7d791ffb7cb547a5e8356dae819831b47b1fd9f"

  url "https://github.com/nicoverbruggen/libron/releases/download/v#{version}/Libron.zip"
  name "Libron"
  homepage "https://nicoverbruggen.be/fonts"

  font "Libron-Bold.ttf"
  font "Libron-BoldItalic.ttf"
  font "Libron-Italic.ttf"
  font "Libron-Regular.ttf"

  zap :not_required
end
