cask "seadrive" do
  version "3.0.13"
  sha256 "cc9cc568f1ddd446364ea1c2582ace5dac07500fcde0b17a29eef89db6033baa"

  url "https://download.seadrive.org/seadrive-#{version}.pkg",
      verified: "download.seadrive.org/"
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
