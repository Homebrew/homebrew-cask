cask "font-photonico-code" do
  version "1.6"
  sha256 "292ead018bec2bcb0c016fceb2d57e3f97fe013ef686f0f7970ab3fbbf03e290"

  url "https://github.com/Photonico/Photonico_Code/releases/download/#{version}/Photonico.#{version}.Regular.ttf"
  name "Photonico Code"
  homepage "https://github.com/Photonico/Photonico_Code"

  font "Photonico.#{version}.Regular.ttf"

  # No zap stanza required
end
