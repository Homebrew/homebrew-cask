cask "runjs" do
  version "1.11.0"
  sha256 "b77b403534562884b4338e406c36df6089b448eb43e085bc92f328414a9e9234"

  # github.com/lukehaas/runjs/ was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast "https://github.com/lukehaas/runjs/releases.atom"
  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://projects.lukehaas.me/runjs/"

  app "RunJS.app"
end
