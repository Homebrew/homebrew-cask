cask "kindle-comic-creator" do
  version :latest
  sha256 :no_check

  # kc2.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kc2.s3.amazonaws.com/KindleComicCreatorInstall.dmg"
  name "Kindle Comic Creator"
  homepage "https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1001103761"

  pkg "Kindle Comic Creator.pkg"

  uninstall pkgutil:   [
    "com.amazon.kc2.kindleComicCreator*",
    "com.amazon.kc2.KindleComicCreator*",
    "com.amazon.kc2.KindlePreviewer.pkg",
  ],
            launchctl: "com.amazon.KindlePreviewerUpdater"
end
