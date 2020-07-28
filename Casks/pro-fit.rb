cask "pro-fit" do
  version "7.0.15"
  sha256 "de345d34221ee9554c67b8b70ac5091b1c1e8ae79f617e58ddde87ffb0ea8fe6"

  # quantum-soft.com/ was verified as official when first introduced to the cask
  url "https://quantum-soft.com/profit/pro_Fit_#{version.dots_to_underscores}.dmg"
  appcast "https://www.quansoft.com/hist.html"
  name "pro Fit"
  homepage "https://www.quansoft.com/"

  app "pro Fit #{version.major}.app"
end
