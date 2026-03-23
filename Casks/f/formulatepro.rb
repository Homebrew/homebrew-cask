cask "formulatepro" do
  version "1.0.0"
  sha256 "29872caacb885a11c7e48fc8276269ed135324364271885030f78bc88435aa80"

  url "https://github.com/stangri/formulatepro/releases/download/v#{version}/FormulatePro-#{version}.dmg"
  name "FormulatePro"
  desc "PDF annotation and markup tool"
  homepage "https://github.com/stangri/formulatepro"

  app "FormulatePro.app"

  zap trash: [
    "~/Library/Preferences/net.melmac.FormulatePro.plist",
  ]
end
