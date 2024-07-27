cask "photozoom-pro" do
  version "9.0.2"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.benvista.com/photozoompro#{version.major}/download/mac",
      user_agent: :fake
  name "PhotoZoom Pro"
  desc "Software for enlarging and downsizing digital photos and graphics"
  homepage "https://www.benvista.com/photozoompro"

  livecheck do
    url "https://www.benvista.com/downloads"
    regex(/PhotoZoom.*?Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  pkg "PhotoZoom Pro #{version.major} Installer.mpkg"

  uninstall pkgutil: "com.benvista.pkg.PhotoZoom-Pro-#{version.major}.app"
end
