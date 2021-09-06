cask "jubler" do
  version "7.0.3"
  sha256 "1165706840cdff7ed729d3737e9f3540e5d0216c0ef4fe506e80bbddfdce572e"

  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.dmg",
      verified: "github.com/teras/Jubler/"
  name "Jubler"
  desc "Subtitle editor"
  homepage "https://www.jubler.org/"

  app "Jubler.app"
end
