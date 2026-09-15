cask "font-chiayi-city" do
  version :latest
  sha256 :no_check

  url "https://www.chiayi.gov.tw/download/logo/ChiayiCityFont.zip"
  name "ChiaYiCityFont"
  homepage "https://www.chiayi.gov.tw/News_Content.aspx?n=8407&s=641274"

  font "ChiayiCity.ttf"

  # No zap stanza required
end
