cask "menubar-colors" do
  version "2.3.0"
  sha256 "b12188d45b57ae8614d9fc25d97c8302936916655ac6c8b19b9ca629c9ee7367"

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  name "Menubar Colors"
  desc "Menu bar app for convenient access to the system colour panel"
  homepage "https://github.com/nvzqz/Menubar-Colors"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "Menubar Colors.app"

  uninstall quit: "com.nikolaivazquez.Menubar-Colors"

  zap trash: [
    "~/Library/Caches/com.nikolaivazquez.Menubar-Colors",
    "~/Library/Preferences/com.nikolaivazquez.Menubar-Colors.plist",
  ]

  caveats do
    requires_rosetta
  end
end
