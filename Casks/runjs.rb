cask "runjs" do
  version "1.12.1"
  sha256 "b416b556d480e5745ea17e30ac06ba9695fe83049fbe54fccdc54f7f25f46fe0"

  # github.com/lukehaas/runjs/ was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast "https://github.com/lukehaas/runjs/releases.atom"
  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://projects.lukehaas.me/runjs/"

  app "RunJS.app"
end
