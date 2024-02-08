cask "deco" do
  version "0.7.1"
  sha256 "cd9d9b553d9fcb706bacba94cbbf7ec80a77609f5505d485b2ebad7c16a8ffba"

  url "https://github.com/decosoftware/deco-ide/releases/download/v#{version}/Deco-#{version}.pkg",
      verified: "github.com/decosoftware/deco-ide/"
  name "Deco"
  desc "IDE for building React Native applications"
  homepage "https://www.decosoftware.com/"

  # pkg cannot be installed automatically and the .zip of the `app` has errors
  installer manual: "Deco-#{version}.pkg"

  uninstall pkgutil: "com.decosoftware.Deco"

  zap trash: [
    "~/.Deco",
    "~/Library/Application Support/com.decosoftware.Deco",
  ]
end
