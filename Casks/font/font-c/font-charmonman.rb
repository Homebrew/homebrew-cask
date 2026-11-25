cask "font-charmonman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/charmonman"
  name "Charmonman"
  homepage "https://fonts.google.com/specimen/Charmonman"

  font "Charmonman-Bold.ttf"
  font "Charmonman-Regular.ttf"

  zap :not_required
end
