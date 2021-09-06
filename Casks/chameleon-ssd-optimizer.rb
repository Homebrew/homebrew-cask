cask "chameleon-ssd-optimizer" do
  version "0.9.9g"
  sha256 "d02749075f205919d2803468906c773f27d362eaf9d54f5cca06166cb7050573"

  url "https://chameleon.alessandroboschini.com/download/ChameleonSSDOptimizer#{version.no_dots}.zip"
  name "Chameleon SSD optimizer"
  homepage "https://chameleon.alessandroboschini.com/"

  app "Chameleon SSD Optimizer.app"

  zap trash: [
    "~/Library/Preferences/aletest.Chameleon-SSD-Optimizer.plist",
    "~/Library/Caches/aletest.Chameleon-SSD-Optimizer/",
  ]
end
