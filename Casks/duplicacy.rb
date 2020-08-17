cask "duplicacy" do
  version "2.6.1"
  sha256 "db08423f54abc19bb8607da93ff7d67c452c19c41140f8d292af3e722ea24a3b"

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
  appcast "https://github.com/gilbertchen/duplicacy/releases.atom"
  name "Duplicacy"
  homepage "https://duplicacy.com/"

  app "Duplicacy.app"
  binary "#{appdir}/Duplicacy.app/Contents/Resources/duplicacy_osx_x64_#{version}", target: "duplicacy"
end
