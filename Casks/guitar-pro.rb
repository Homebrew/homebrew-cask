cask "guitar-pro" do
  version "8"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://alt-downloads.guitar-pro.com/gp7/stable/guitar-pro-#{version.major}-setup.pkg"
  name "Guitar Pro"
  desc "Sheet music editor software for guitar, bass, keyboards, drums and more"
  homepage "https://www.guitar-pro.com/"

  livecheck do
    url :homepage
    regex(/Guitar\s*Pro\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "guitar-pro-#{version.major}-setup.pkg"

  uninstall pkgutil: "com.arobas-music.guitarpro*"
end
