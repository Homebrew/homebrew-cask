cask "cocoapods" do
  version "1.5.2"
  sha256 "03aa37afb129d6ae515d3b9ee7a81c30ba91050131e2dfbb3683bdd2f05ac67a"

  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2",
      verified: "github.com/CocoaPods/CocoaPods-app/"
  name "CocoaPods.app"
  desc "Dependency manager for Cocoa projects"
  homepage "https://cocoapods.org/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with formula: "cocoapods"

  app "CocoaPods.app"
  binary "#{appdir}/CocoaPods.app/Contents/Helpers/pod"

  postflight do
    # Because Homebrew Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system_command "/usr/bin/defaults",
                   args: ["write", "org.cocoapods.CocoaPods", "CPDoNotRequestCLIToolInstallationAgain",
                          "-bool", "true"]
  end

  zap trash: "~/Library/Preferences/org.cocoapods.CocoaPods.plist"
end
