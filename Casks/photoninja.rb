cask "photoninja" do
  version "1.4.0d"
  sha256 "bea6d1a366309be6ed469072b74067edbe698d651faf8fae6198f97f96b0b823"

  url "https://picturecode.cachefly.net/photoninja/downloads/PhotoNinja_#{version}_sse42.pkg",
      verified: "picturecode.cachefly.net/photoninja/downloads/"
  name "Photo Ninja"
  desc "Professional RAW converter"
  homepage "https://www.picturecode.com/index.php"

  livecheck do
    url "https://www.picturecode.com/download.php"
    regex(/PhotoNinja[._-]v?(\d+(?:\.\d+)+\w?)[._-]sse42\.pkg/i)
  end

  pkg "PhotoNinja_#{version}_sse42.pkg"

  uninstall pkgutil: "PhotoNinja.#{version}.sse42"
end
