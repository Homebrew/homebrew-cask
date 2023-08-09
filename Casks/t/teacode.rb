cask "teacode" do
  version "1.1.43"
  sha256 "7e49e18d70799477e7d58f14a8312324494b484a0b93a3679fb43c58eff59dd9"

  url "https://www.apptorium.com/public/products/teacode/releases/TeaCode-#{version}.zip"
  name "TeaCode"
  desc "Text expanding app for developers"
  homepage "https://www.apptorium.com/teacode"

  livecheck do
    url "https://www.apptorium.com/teacode/trial"
    regex(/href=.*?TeaCode[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeaCode.app"

  zap trash: "~/Library/Preferences/com.apptorium.TeaCode-dm.plist"
end
