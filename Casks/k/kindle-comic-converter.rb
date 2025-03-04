cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.2.3"
  sha256 arm:   "612948894db1a6cee3d2c6695ecdef0f381e834ec676d1a9dc1ceb7eb53d023c",
         intel: "7f0156fdab71fbf2386a6a78a8c8a892825374f0bf71a6bde43c8fb47d088ae0"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg",
      verified: "github.com/ciromattia/kcc/"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://kcc.iosphe.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
