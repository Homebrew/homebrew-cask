cask "silverlight" do
  version "5.1.50901.0"
  sha256 "f53057921b1a3bc62a717c32a3970eac67fd8c424456cfdcdf0b28d3e27a796c"

  url "https://download.microsoft.com/download/0/3/E/03EB1393-4F4E-4191-8364-C641FAB20344/#{version.patch}.00/Silverlight.dmg"
  name "Silverlight"
  homepage "https://www.microsoft.com/silverlight/"

  pkg "silverlight.pkg"

  uninstall pkgutil: "com.microsoft.silverlight.plugin",
            delete:  "/Library/Internet Plug-Ins/Silverlight.plugin"

  zap trash: [
    "~/Library/Application Support/Microsoft/Silverlight",
    "~/Library/Preferences/com.microsoft.silverlight.plist",
    "~/Library/Saved Application State/com.microsoft.silverlight.savedState",
  ],
      rmdir: "~/Library/Application Support/Microsoft/"
end
