cask "photozoom-pro" do
  version "8"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.benvista.com/photozoompro#{version}/download/mac",
      user_agent: :fake
  name "PhotoZoom Pro"
  desc "Software for enlarging and downsizing digital photos and graphics"
  homepage "https://www.benvista.com/photozoompro"

  pkg "PhotoZoom Pro #{version} Installer.mpkg"

  uninstall pkgutil: "com.benvista.pkg.PhotoZoom-Pro-#{version}.app"
end
