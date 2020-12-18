cask "scaleft" do
  version "1.50.4"
  sha256 "76f2126da3f2e889db6148704f0d73c9529e3fa34bb7e08c1622c5a9f6ea60f7"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
  name "ScaleFT"
  homepage "https://www.scaleft.com/docs/sft-osx/"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end
