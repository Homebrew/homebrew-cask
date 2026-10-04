cask "font-photonico-code" do
  version "1.7"
  sha256 "0652f8be7f39d017dbcfc6bff466ecf296705e3f97c1863e1ee3ec5cf4f25fc3"

  url "https://github.com/Photonico/Photonico_Code/releases/download/#{version}/Photonico.#{version}.Regular.ttf"
  name "Photonico Code"
  homepage "https://github.com/Photonico/Photonico_Code"

  font "Photonico.#{version}.Regular.ttf"

  # No zap stanza required
end
