cask "butter" do
  version "0.3.0"
  sha256 "4255b581368e88ee3c802811f0824093f64bce73fb323d77b49a25700154ad84"

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast "https://github.com/harukasan/butter/releases.atom"
  name "Butter"
  desc "Melted idobata.io client"
  homepage "https://github.com/harukasan/butter"

  app "Butter.app"
end
