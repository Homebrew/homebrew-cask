cask "license-store" do
  version "1.4"
  sha256 "20f17b4fbd3de549c6615ea5ca8ddd3c72d2d72398318f369ca64c8c9c4eb73e"

  url "https://www.apptorium.com/public/products/license-store/releases/LicenseStore-#{version}.zip"
  name "License Store"
  desc "Software licence manager"
  homepage "https://www.apptorium.com/license-store"

  livecheck do
    url "https://www.apptorium.com/updates/license-store"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "License Store.app"

  uninstall quit: "com.apptorium.License-Store-Paddle"

  zap trash: [
    "~/Library/Application Support/License Store",
    "~/Library/Caches/CloudKit/com.apptorium.License-Store-Paddle",
    "~/Library/Caches/com.apptorium.License-Store-Paddle",
    "~/Library/HTTPStorages/com.apptorium.License-Store-Paddle*",
    "~/Library/Preferences/com.apptorium.License-Store-Paddle.plist",
    "~/Library/WebKit/com.apptorium.License-Store-Paddle",
  ]
end
