cask "cursor" do
  version "0.1.4"
  sha256 :no_check

  url "https://dl.todesktop.com/230313mzl4w4u92/mac/installer/universal",
      verified: "dl.todesktop.com/230313mzl4w4u92/mac/installer/"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.so/"

  livecheck do
    url "https://raw.githubusercontent.com/getcursor/cursor/main/package.json"
    regex(/"Cursor",\n\s*"version":\s"(\d+(?:\.\d+)+)"/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  installer script: "Install Cursor.app/Contents/MacOS/ToDesktop Installer"

  uninstall quit:   "com.todesktop.230313mzl4w4u92",
            delete: "/Applications/Cursor.app/"
end
