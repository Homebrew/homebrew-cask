cask "runjs" do
  version "1.12.2"
  sha256 "3ad31592e79c97c5f78b057b43a5b57380abd23b82d353a055bb0d7b34f32eea"

  # github.com/lukehaas/runjs/ was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast "https://github.com/lukehaas/runjs/releases.atom"
  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://projects.lukehaas.me/runjs/"

  app "RunJS.app"
end
