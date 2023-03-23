cask "cursor" do
  version "0.1.3"
  sha256 :no_check

  url "https://dl.todesktop.com/230313mzl4w4u92/mac/installer/universal",
      verified: "dl.todesktop.com/230313mzl4w4u92"
  name "Cursor"
  desc "Build Software. Fast. Write, edit, and chat about your code with a powerful AI"
  homepage "https://www.cursor.so/"

  installer script: "Install Cursor.app/Contents/MacOS/ToDesktop Installer"

  uninstall quit:   "com.todesktop.230313mzl4w4u92",
            delete: "/Applications/Cursor.app/"
end
