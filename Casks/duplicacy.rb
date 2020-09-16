cask "duplicacy" do
  version "2.1.2"
  sha256 "c9343d7c82d9f5e632b4f3de9e4a2439849f861ab7c6e4d754ea8e945f776a4f"

  # acrosync.com/duplicacy/ was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy/duplicacy_gui_osx_#{version}.dmg"
  name "Duplicacy"
  homepage "https://duplicacy.com/"

  app "Duplicacy.app"
  binary "#{appdir}/Duplicacy.app/Contents/Resources/duplicacy_osx_x64_#{version}", target: "duplicacy"
end
