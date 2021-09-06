cask "chocolat" do
  version "3.4"
  sha256 "43f1f96350c10aa2918719a2238c1e4ec20dd2cfa7a4930f6e7d74f92207c4fe"

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  name "Chocolat"
  desc "Text editor"
  homepage "https://chocolatapp.com/"

  livecheck do
    url "https://chocolatapp.com/download/"
    strategy :header_match
  end

  app "Chocolat.app"
end
