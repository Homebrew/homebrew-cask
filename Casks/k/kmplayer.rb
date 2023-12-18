cask "kmplayer" do
  version "0.3.2"
  sha256 "4b8365d025de4d0cf11fae45dc024f117213099e5bbc0f01807103cbd36ae128"

  url "http://cdn.kmplayer.com/KMP/Download/KMPX/KMPlayer-#{version}.pkg"
  name "KMPlayer"
  desc "Video player"
  homepage "https://www.kmplayer.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "KMPlayer-#{version}.pkg"

  uninstall pkgutil: "com.kmplayer.osx"
end
