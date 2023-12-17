cask "dynamic-dark-mode" do
  version "1.5.2"
  sha256 "696d5d605b3c2b54d2485936eff59cd150116f82f584b76938bf80f252d8f194"

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  name "Dynamic Dark Mode"
  desc "Automatic Dark Mode toggle"
  homepage "https://github.com/ApolloZhu/Dynamic-Dark-Mode"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Dynamic Dark Mode.app"

  zap trash: "~/Library/Application Scripts/io.github.apollozhu.Dynamic.Launcher"
end
