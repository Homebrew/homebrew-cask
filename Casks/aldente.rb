cask "aldente" do
  version "v2.0-alpha"
  sha256 "03859d6ca653b59bb32b5ddff1806ec07c24523f871d941fadf940f27ac8139e"
  url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente_2.0Alpha.app.zip"
  appcast "https://github.com/davidwernhart/AlDente/releases.atom"
  name "AlDente"
  desc "Menu bar tool to limit maximum charging percentage"
  homepage "https://github.com/davidwernhart/AlDente"

  app "AlDente.app"

  uninstall quit:   "com.davidwernhart.Helper",
            delete: [
              "/Library/LaunchDaemons/com.davidwernhart.Helper.plist",
              "/Library/PrivilegedHelperTools/com.davidwernhart.Helper",
            ]
end
