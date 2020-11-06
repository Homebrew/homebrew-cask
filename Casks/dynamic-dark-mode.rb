cask "dynamic-dark-mode" do
  version "1.5.2"
  sha256 "696d5d605b3c2b54d2485936eff59cd150116f82f584b76938bf80f252d8f194"

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom"
  name "Dynamic Dark Mode"
  desc "Automatic Dark Mode toggle"
  homepage "https://github.com/ApolloZhu/Dynamic-Dark-Mode"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Dynamic Dark Mode.app"
end
