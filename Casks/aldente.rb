cask "aldente" do

  version "2.1.2"
  sha256 "39cebc2db5b75c4217abd42470ecfee8280a35178b0d2581df3857cd8b742880"
  url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente_#{version}_Notarized.app.zip"

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
