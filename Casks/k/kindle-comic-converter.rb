cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "12.1.0"
  sha256 arm:   "cac1becc40bdbbbd7d03fd7f8926a6f9fb0e574e019c4fb38672aa1dd427cd79",
         intel: "564ca029057e424b2c9cca0bffc44fc43f0aca6b570a310a30554f44a744afa5"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
