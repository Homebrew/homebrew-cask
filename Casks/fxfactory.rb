cask "fxfactory" do
  version "7.2.6,6943"
  sha256 "b565a889b2878cc4cca17d2e38597a3628902be7eb775dca3bd94f94808ec8d2"

  url "https://fxfactory.s3.amazonaws.com/noiseindustries/fxfactory/FxFactory_#{version.before_comma.no_dots}_#{version.after_comma}.zip",
      verified: "fxfactory.s3.amazonaws.com/noiseindustries/"
  name "FxFactory"
  desc "Browse, install and purchase effects and plugins from a huge catalog"
  homepage "https://fxfactory.com/"

  livecheck do
    url "https://fxfactory.com/download/archive/"
    regex(%r{href=.*?/fxfactory-(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "Install FxFactory #{version.before_comma}.pkg"

  uninstall pkgutil:   "com.fxfactory.pkg",
            launchctl: "com.fxfactory.FxFactory.helper"
            delete:    [
              "/Library/Application Support/FxFactory",
              "/Library/LaunchDaemons/com.fxfactory.FxFactory.helper.plist",
              "/Library/PrivilegedHelperTools/com.fxfactory.FxFactory.helper",
            ]
end
