cask "descript" do
  version :latest
  sha256 :no_check

  url "https://electron.descript.com/Descript%20Installer.app.zip"
  name "Descript"
  homepage "https://www.descript.com/"

  installer script: "Descript Installer.app/Contents/MacOS/Descript Installer"

  # uninstall pkgutil: 'com.descript.beachcube' # this didnt remove the app
  uninstall delete: "/Applications/Descript.app"
end
