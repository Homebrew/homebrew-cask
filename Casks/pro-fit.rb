cask "pro-fit" do
  version "7.0.17"
  sha256 "761aaf7f1688d736b4544387aae9dfa20007f552ea3017925864bc3c096ce625"

  url "https://quantum-soft.com/profit/pro_Fit_#{version.dots_to_underscores}.dmg",
      verified: "quantum-soft.com/"
  appcast "https://www.quansoft.com/hist.html"
  name "pro Fit"
  homepage "https://www.quansoft.com/"

  app "pro Fit #{version.major}.app"
end
