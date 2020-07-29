cask "chocolat" do
  version "3.4"
  sha256 "43f1f96350c10aa2918719a2238c1e4ec20dd2cfa7a4930f6e7d74f92207c4fe"

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  appcast "https://chocolatapp.com/userspace/appcast/appcast_alpha.php"
  name "Chocolat"
  homepage "https://chocolatapp.com/"

  app "Chocolat.app"
end
