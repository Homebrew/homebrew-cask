cask "scaleft" do
  version "1.45.4"
  sha256 "16b5d8b67f4f41dff2a68ab1cecd4a8d455f3f80d1e5b0be332e84cfd9e916c2"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
  name "ScaleFT"
  homepage "https://www.scaleft.com/docs/sft-osx/"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end
