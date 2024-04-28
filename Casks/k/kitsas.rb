cask "kitsas" do
  version "5.5"
  sha256 "5e98b1bb0df610ea755b186ebd48f0f04047507301474104b72b68ef3fdf6d97"

  url "https://github.com/petriaarnio/kitupiikki/releases/download/mac-v#{version}/Kitsas-#{version}.dmg"
  name "Kitsas"
  desc "Finnish bookkeeping software for small organisations"
  homepage "https://github.com/artoh/kitupiikki"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Kitsas.app"

  uninstall quit: "fi.atfos.kitsas"
end
