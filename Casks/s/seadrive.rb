cask "seadrive" do
  version "3.0.18"
  sha256 "b8a2550f5077faaec2d5f26a0d7a52d592cfe28b73058a38139ef81e9ec1adac"

  url "https://sos-ch-dk-2.exo.io/seafile-downloads/seadrive-#{version}.pkg",
      verified: "sos-ch-dk-2.exo.io/seafile-downloads/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seadrive[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :monterey"

  pkg "seadrive-#{version}.pkg"

  uninstall launchctl:  "com.seafile.seadrive.helper",
            quit:       [
              "com.seafile.seadrive",
              "com.seafile.seadrive.fprovider",
            ],
            login_item: "SeaDrive",
            pkgutil:    "com.seafile.SeaDrive"

  zap trash: [
    "~/.seadrive",
    "~/Library/Application Scripts/*.com.seafile.seadrive",
    "~/Library/Application Scripts/com.seafile.seadrive.findersync",
    "~/Library/Application Scripts/com.seafile.seadrive.fprovider",
    "~/Library/Containers/com.seafile.seadrive.findersync",
    "~/Library/Containers/com.seafile.seadrive.fprovider",
    "~/Library/Group Containers/*.com.seafile.seadrive",
    "~/Library/Group Containers/com.seafile.seadrive.findersync",
    "~/SeaDrive",
  ]
end
