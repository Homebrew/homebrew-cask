cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "9.3.8"
  sha256 arm:   "82fd7666395afb432c754755986c3d174b6ba93454468807cb83d30cc1b742cc",
         intel: "ec4e44f2128fcfc8625dc60c09e326ab994a2bd6bf17e9a3116252982193dbfe"

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
