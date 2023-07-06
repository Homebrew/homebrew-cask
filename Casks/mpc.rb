cask "mpc" do
  version "2.12.1.35"
  sha256 "4619858980c148d31038fc9e352ad7b08b524c646242dfc56dd543914c2a56da"

  url "https://cdn.inmusicbrands.com/akai/MPC2/#{version.major_minor_patch.no_dots}_sufbchdj/Install-MPC-v#{version.major_minor}-#{version}-release-Mac.zip",
      verified: "cdn.inmusicbrands.com/akai/MPC2/"
  name "MPC"
  desc "Composition software (DAW) from Akai"
  homepage "https://www.akaipro.com/mpc-software-2"

  livecheck do
    url :homepage
    regex(/href=.*?Install[._-]MPC[._-]v?[\d.]+[_-](\d+(?:\.\d+)+)[_-]release[_-]Mac\.zip"/i)
  end

  depends_on macos: ">= :catalina"

  pkg "MPC-Installer-#{version}/Install MPC #{version}.app/Contents/Resources/InstallApp.pkg"

  uninstall_postflight do
    oh1 "Caveats"
    print <<~EOS
      #{token} installs ilok-license-manager for license management.
      Please note that other applications may depend on it and it will
      not be removed automatically.
      To fully remove all files, run:

        brew uninstall --cask ilok-license-manager --zap --force

    EOS
  end

  # Some launchctl and pkgutil items are installed by ilok-license-manager.
  # They should only be removed with ilok-license-manager.
  # launchctl:  com.paceap.eden.licensed com.paceap.eden.licensed.agent
  # pkgutil:    com.paceap.pkg.eden.activationexperience com.paceap.pkg.eden.iLokLicenseManager
  #             com.paceap.pkg.eden.licensed
  uninstall pkgutil: [
    "com.airmusictechnology.hybrid.content",
    "com.akaipro.mpc.aax.pkg",
    "com.akaipro.mpc.appsupport.pkg",
    "com.akaipro.mpc.audiounit.pkg",
    "com.akaipro.mpc.standalone.pkg",
    "com.akaipro.mpc.vst.pkg",
  ]

  # No zap stanza required
end
