cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.3.3"
  sha256 arm:   "b53a763cfcbae199aafd761fa05acd495492893da410a0508feef9e4b355dd68",
         intel: "47ce7b7781ed685ec9ade12a38a8692d0b9dc293967391afe8330333248c910c"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
