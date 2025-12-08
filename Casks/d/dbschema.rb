cask "dbschema" do
  version "10.0.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dbschema.com/download/dbschema_macos_#{version.dots_to_underscores}.dmg"
  name "DbSchema"
  desc "Design, document and deploy databases"
  homepage "https://dbschema.com/"

  livecheck do
    url "https://dbschema.com/download.html"
    regex(/href=.*?DbSchema[._-]macos[._-]v?(\d+(?:_\d+)+)\.t/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  installer script: {
    executable: "#{staged_path}/DbSchema Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "/Applications/DbSchema/DbSchema Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  zap trash: "~/Library/Preferences/com.dbschema.dbschema.plist"
end
