cask "font-ma-shan-zheng" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mashanzheng/MaShanZheng-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ma Shan Zheng"
  homepage "https://fonts.google.com/specimen/Ma+Shan+Zheng"

  font "MaShanZheng-Regular.ttf"

  # No zap stanza required
end
