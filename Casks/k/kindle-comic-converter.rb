cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "8.0.3"
  sha256 arm:   "3eb907f1b20ce8dcd9aad0715d1fe989fa9d579cc3201e2f737f961de3f78705",
         intel: "5fbfe5c9e9fd00887082cec04455a986cd537647dcce99e941ff2bf52968a2c3"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
