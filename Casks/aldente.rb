cask "aldente" do
  version "1.18"
  sha256 "8dfd60f93657d7a5be014a468fe60fa4f1e602120f3d6ddeed5b34e7fe57f374"

  url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente.dmg"
  name "AlDente"
  desc "Menu bar tool to limit maximum charging percentage"
  homepage "https://github.com/davidwernhart/AlDente"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AlDente.app"

  uninstall quit:   "com.davidwernhart.Helper",
            delete: [
              "/Library/LaunchDaemons/com.apphousekitchen.aldente-pro.helper.plist",
              "/Library/PrivilegedHelperTools/com.apphousekitchen.aldente-pro.helper",
            ]

  zap trash: [
    "~/Library/Application Support/AlDente",
    "~/Library/Caches/com.apphousekitchen.aldente-pro",
    "~/Library/HTTPStorages/com.apphousekitchen.aldente-pro.binarycookies",
  ]
end
