cask "aldente" do
  if MacOS.version <= :catalina
    version "1.2"
    sha256 "a588dc29faca894b7321e23420ca17d6a944b9b3b46412435f519b96e4ebee7b"
    url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente.app.zip"
  else
    version "2.1.2"
    sha256 "39cebc2db5b75c4217abd42470ecfee8280a35178b0d2581df3857cd8b742880"
    url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente_#{version}_Notarized.app.zip"
  end

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
