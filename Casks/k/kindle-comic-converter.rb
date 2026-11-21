cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "13.0.2"
  sha256 arm:   "76ba089c5bf25c17ddd6a06c4d627257651ea830857e5a3d7cc92d27cb25bdd0",
         intel: "c8af0570fb432dfd776adf561ec5243e0091023b58e3c3ee6fa38354d5d1a88a"

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
