cask "font-lilex" do
  version "2.510"
  sha256 "2fd9cf5d12ca390bba8c487f189f78e5900e7f6f7d6a702d6ed5074c26260537"

  url "https://github.com/mishamyrt/Lilex/releases/download/#{version}/Lilex.zip"
  name "Lilex"
  homepage "https://github.com/mishamyrt/Lilex"

  font "ttf/Lilex-Bold.ttf"
  font "ttf/Lilex-ExtraLight.ttf"
  font "ttf/Lilex-ExtraThick.ttf"
  font "ttf/Lilex-Medium.ttf"
  font "ttf/Lilex-Regular.ttf"
  font "ttf/Lilex-Thin.ttf"
  font "variable/Lilex-VF.ttf"

  # No zap stanza required
end
