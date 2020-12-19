cask "kindle-previewer" do
  version "3.48"
  sha256 :no_check

  url "https://kindlepreviewer3.s3.amazonaws.com/KindlePreviewerInstaller.pkg",
      verified: "kindlepreviewer3.s3.amazonaws.com/"
  name "Kindle Previewer"
  homepage "https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1003018611"

  pkg "KindlePreviewerInstaller.pkg"

  uninstall pkgutil: "Amazon.Kindle.Previewer.pkg"
end
