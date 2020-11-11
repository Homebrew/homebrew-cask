cask "scaleft" do
  version "1.49.2"
  sha256 "b67861f8193ab04a9e5116aff1bda707c8026aad24a191d7bd8c6c03b297144d"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
  name "ScaleFT"
  homepage "https://www.scaleft.com/docs/sft-osx/"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end
