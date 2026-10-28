cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "12.1.3"
  sha256 arm:   "89af5091075e1c3c9cf2f8bb5dda0a35db3e6bc694bac3b3d7cce8e6b4d55590",
         intel: "0c31b9a89a2937948de0b3b16fe167b62163a559d01773e8578aa69f2ce28eec"

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
