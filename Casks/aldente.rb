cask "aldente" do
  version "2.1"
  sha256 "3ba479e2400117e605dce4d4b222a984f36df6ebcd6a554b1f465406af1a0a7d"

  url "https://github.com/davidwernhart/AlDente/releases/download/v#{version}/AlDente_#{version}.app.zip"
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
