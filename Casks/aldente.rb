cask "aldente" do
  if MacOS.version <= :catalina
    version "1.2"
    sha256 "a588dc29faca894b7321e23420ca17d6a944b9b3b46412435f519b96e4ebee7b"
    url "https://github.com/davidwernhart/AlDente/releases/download/#{version}/AlDente.app.zip"

    livecheck do
      skip
    end
  else
    version "2.2"
    sha256 "b1f93da6677531cd387094a8d421523a838d2036ccfe26d5744fbcf7a3c43a2f"
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
