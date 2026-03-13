cask "inkwell" do
  version "1.1"
  sha256 "163376222aed647c8744f2f28b607f79ae4eca79c5d35f983906a130fc677e8a"

  url "https://github.com/4worlds4w-svg/inkwell/releases/download/v#{version}/Inkwell_#{version}_aarch64.dmg"
  name "Inkwell"
  desc "Lightweight Markdown editor with split view, live preview, themes, and focus mode"
  homepage "https://github.com/4worlds4w-svg/inkwell"

  app "Inkwell.app"
end
