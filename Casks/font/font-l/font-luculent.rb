cask "font-luculent" do
  version :latest
  sha256 :no_check

  url "https://fontlibrary.org/assets/downloads/luculent/2de871ff7494289a7c7ff160552158eb/luculent.zip"
  name "Luculent"
  homepage "https://fontlibrary.org/en/font/luculent"

  font "luculent/luculent.ttf"
  font "luculent/luculentb.ttf"
  font "luculent/luculentbi.ttf"
  font "luculent/luculenti.ttf"

  # No zap stanza required
end
