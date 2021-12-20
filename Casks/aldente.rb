cask "aldente" do
  version "1.11"
  sha256 "c34039647c96d44fb77113014ddba29ef4d30c25d6dd69a1b0eac635b4d98d53"

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
