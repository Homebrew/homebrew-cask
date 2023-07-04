cask "mpc" do
  version "2.12.1.35"
  sha256 "4619858980c148d31038fc9e352ad7b08b524c646242dfc56dd543914c2a56da"

  url "https://cdn.inmusicbrands.com/akai/MPC2/#{version.major_minor_patch.no_dots}_sufbchdj/Install-MPC-v#{version.major_minor}-#{version}-release-Mac.zip",
      verified: "cdn.inmusicbrands.com/akai/MPC2/"
  name "mpc"
  desc "Composition software (DAW) from Akai"
  homepage "https://www.akaipro.com/mpc-software-2"

  livecheck do
    url "https://www.akaipro.com/mpc-software-2"
    regex(/href=.*?Install[._-]MPC[._-]v?[\d.]+[_-](\d+(?:\.\d+)+)[_-]release[_-]Mac\.zip"/i)
  end

  pkg "MPC-Installer-#{version}/Install MPC #{version}.app/Contents/Resources/InstallApp.pkg"

  uninstall pkgutil: [
    "com.airmusictechnology.hybrid.content",
    "com.akaipro.mpc.aax.pkg",
    "com.akaipro.mpc.appsupport.pkg",
    "com.akaipro.mpc.audiounit.pkg",
    "com.akaipro.mpc.standalone.pkg",
    "com.akaipro.mpc.vst.pkg",
  ]

  zap delete:    [
        "/usr/local/bin/iloktool",
        "/Library/Preferences/com.paceap.eden.clientdb.*.sdb",
        "/Library/Preferences/com.paceap.eden.floating.*.prefs",
      ],
      launchctl: [
        "com.paceap.eden.licensed",
        "com.paceap.eden.licensed.agent",
      ],
      pkgutil:   [
        "com.paceap.pkg.eden.activationexperience",
        "com.paceap.pkg.eden.iLokLicenseManager",
        "com.paceap.pkg.eden.licensed",
      ],
      trash:     [
        "~/Library/Caches/com.paceap.iLokLicenseManager",
        "~/Library/Logs/Eden",
        "~/Library/HTTPStorages/com.paceap.eden.iLokLicenseManager",
        "~/Library/Preferences/com.paceap.iLokLicenseManager.plist",
        "~/Library/Saved Application State/com.paceap.eden.iLokLicenseManager.savedState",
      ]
end
