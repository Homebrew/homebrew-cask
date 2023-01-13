cask "luyten" do
  version "0.5.4"
  sha256 "f0d900bd9bba5dc72eb3dfe374db9bbef4222e49477a6bf18c6c14e3ddcf8eb4"

  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}_Rebuilt_with_Latest_depenencies/luyten-OSX-#{version}.zip",
      verified: "github.com/deathmarine/Luyten/"
  name "Luyten"
  desc "Open-source Java decompiler GUI for Procyon"
  homepage "https://deathmarine.github.io/Luyten/"

  app "Luyten.app"

  caveats do
    discontinued
  end
end
