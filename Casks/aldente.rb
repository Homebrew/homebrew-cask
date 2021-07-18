cask "aldente" do
  version "1.04"
  sha256 "205b44132a8cd5d3777e564092b31732cca26dfb3e90893275537420502da538"
  url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente_#{version}.dmg"

  name "AlDente"
  desc "Menu bar tool to limit maximum charging percentage"
  homepage "https://github.com/davidwernhart/AlDente"

  app "AlDente.app"

  uninstall quit:   "com.davidwernhart.Helper",
            delete: [
              "/Library/LaunchDaemons/com.davidwernhart.Helper.plist",
              "/Library/PrivilegedHelperTools/com.davidwernhart.Helper",
            ]

  zap trash: "~/Library/Preferences/com.davidwernhart.AlDente.plist"
end
