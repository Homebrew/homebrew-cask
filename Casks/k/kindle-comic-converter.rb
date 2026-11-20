cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "13.0.1"
  sha256 arm:   "461b31e568ff8e800b77ecaba68a7f89d6121eba802c971f234d6d11b5ac2387",
         intel: "a7025ead74c71c7f568b4634e3478467164e665dd2390b0788bb6d5ed126c7c3"

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

  zap trash: [
    "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist",
    "~/Library/Preferences/Kindle Comic Converter.plist",
  ]
end
