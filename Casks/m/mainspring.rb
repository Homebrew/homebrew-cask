cask "mainspring" do
  version "3.4.0"
  sha256 "84ecee1c7b48d1170cf6df35594735a7137dfe1b92a5f364e957cbeb3b81c67e"

  url "https://trymainspring.com/downloads/Mainspring-#{version}.pkg"
  name "Mainspring"
  desc "Utility for customising hidden system settings"
  homepage "https://trymainspring.com/"

  livecheck do
    url "https://trymainspring.com/downloads/Mainspring.pkg"
    regex(/Mainspring[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  depends_on macos: :ventura

  pkg "Mainspring-#{version}.pkg"

  uninstall launchctl: "app.mainspring.helper",
            quit:      "app.mainspring",
            pkgutil:   "app.mainspring.pkg",
            delete:    [
              "/Library/LaunchDaemons/app.mainspring.helper.plist",
              "/Library/PrivilegedHelperTools/app.mainspring.helper",
            ]

  zap delete: "/Library/Logs/Mainspring-helper.log",
      trash:  [
        "~/Library/Caches/app.mainspring",
        "~/Library/HTTPStorages/app.mainspring",
        "~/Library/HTTPStorages/app.mainspring.binarycookies",
        "~/Library/Preferences/app.mainspring.plist",
      ]
end
