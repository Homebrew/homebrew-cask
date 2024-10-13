cask "mysides" do
  version "1.0.1"
  sha256 "76946b8f7c5bf714125d75f1ada8140e034f05a9e288c73a7af445d76c2a5514"

  url "https://github.com/mosen/mysides/releases/download/v#{version}/mysides-#{version}.pkg"
  name "mysides"
  homepage "https://github.com/mosen/mysides"

  deprecate! date: "2024-10-13", because: :unmaintained

  pkg "mysides-#{version}.pkg"

  uninstall pkgutil: "com.github.mosen.mysides"
end
