cask "font-photonico-code" do
  version "1.4"
  sha256 "a6919ca4e80089843027c0e17bee2ab1f7a8f022ad651425cabe8c07ef8e53a2"

  url "https://github.com/Photonico/Photonico_Code/releases/download/#{version}/Photonico.#{version}.Regular.ttf"
  name "Photonico Code"
  homepage "https://github.com/Photonico/Photonico_Code"

  font "Photonico.#{version}.Regular.ttf"

  # No zap stanza required
end
