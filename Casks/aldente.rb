cask "aldente" do
  version "1.21.2"
  sha256 "f71306f544d88b72e97de09f1bc0c1491f81846335fac1585362217d6040fe66"

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
