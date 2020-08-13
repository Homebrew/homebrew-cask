cask "contraste" do
  version "1.0"
  sha256 "ab6ce81efcde8179f9fdf81baff46f90dae45bca580f8582d82c8d1e42aa2c4a"

  url "https://contrasteapp.com/contraste-#{version}.zip"
  appcast "https://contrasteapp.com/updates/releases.xml"
  name "Contraste"
  homepage "https://contrasteapp.com/"

  depends_on macos: ">= :high_sierra"

  app "Contraste.app"
end
