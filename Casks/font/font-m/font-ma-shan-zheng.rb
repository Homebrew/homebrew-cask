cask "font-ma-shan-zheng" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mashanzheng/MaShanZheng-Regular.ttf"
  name "Ma Shan Zheng"
  homepage "https://fonts.google.com/specimen/Ma+Shan+Zheng"

  font "MaShanZheng-Regular.ttf"

  zap :not_required
end
