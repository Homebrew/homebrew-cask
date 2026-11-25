cask "font-medievalsharp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/medievalsharp/MedievalSharp.ttf"
  name "MedievalSharp"
  homepage "https://fonts.google.com/specimen/MedievalSharp"

  font "MedievalSharp.ttf"

  zap :not_required
end
