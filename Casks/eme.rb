cask "eme" do
  version "0.15.1"
  sha256 "bae758c1dde501365cc774adeb2dd85418e0b0513df48a2ee66ba0b792cb02d5"

  url "https://github.com/egoist/eme/releases/download/v#{version}/EME-#{version}.dmg"
  name "EME"
  desc "Markdown editor"
  homepage "https://github.com/egoist/eme"

  auto_updates true

  app "EME.app"
end
