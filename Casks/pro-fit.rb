cask "pro-fit" do
  version "7.0.16"
  sha256 "f7b135203f98975f4e249e085cbc5d63b3ce13fcbe9150f2824e2002ecdd8a44"

  # quantum-soft.com/ was verified as official when first introduced to the cask
  url "https://quantum-soft.com/profit/pro_Fit_#{version.dots_to_underscores}.dmg"
  appcast "https://www.quansoft.com/hist.html"
  name "pro Fit"
  homepage "https://www.quansoft.com/"

  app "pro Fit #{version.major}.app"
end
