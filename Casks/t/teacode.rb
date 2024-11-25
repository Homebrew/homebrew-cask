cask "teacode" do
  version "1.1.3"
  sha256 "2e2545beafe4c77ef52e76ff49edf1d4dbceed2a6bf6c8c1b22424112480478b"

  url "https://cdn.apptorium.com/products/teacode/releases/TeaCode-#{version}.zip"
  name "TeaCode"
  desc "Text expanding app for developers"
  homepage "https://www.apptorium.com/teacode"

  livecheck do
    url "https://www.apptorium.com/updates/teacode"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeaCode.app"

  zap trash: "~/Library/Preferences/com.apptorium.TeaCode-dm.plist"
end
