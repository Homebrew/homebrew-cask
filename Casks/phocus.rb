cask "phocus" do
  version "3.5.3"
  sha256 "90c2993af5d2ebef6246dcc2695d1348648f75f97632df64ea5651cb6e6ddb26"

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name "Hasselblad Phocus"
  homepage "https://www.hasselblad.com/software/phocus"

  depends_on macos: ">= :sierra"

  app "Phocus.app"
end
