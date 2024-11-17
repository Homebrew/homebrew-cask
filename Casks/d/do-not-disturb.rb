cask "do-not-disturb" do
  version "1.3.0"
  sha256 "000e3ce8f5abd1313bbb603c401a1be0b5cf4f11644d36f1d5d382745079fdc3"

  url "https://bitbucket.org/objective-see/deploy/downloads/DoNotDisturb_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  name "Do Not Disturb"
  desc "Open-source physical access (aka 'evil maid') attack detector"
  homepage "https://objective-see.com/products/dnd.html"

  deprecate! date: "2024-11-16", because: :unmaintained

  depends_on arch: :x86_64
  depends_on macos: ">= :sierra"

  installer script: {
    executable: "#{staged_path}/Do Not Disturb Installer.app/Contents/MacOS/Do Not Disturb Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/Do Not Disturb Installer.app/Contents/MacOS/Do Not Disturb Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }
end
