cask "rowanj-gitx" do
  version "0.15,1964"
  sha256 "d88bcb7f92ca1cdf31cb3f1d2e24c03e2091ab330319aeef2e770c0dbd6f7817"

  url "https://github.com/rowanj/gitx/releases/download/builds/#{version.csv.first}/#{version.csv.second}/GitX-dev-#{version.csv.second}.dmg",
      verified: "github.com/rowanj/gitx/"
  name "GitX-dev"
  desc "Native graphical client for the git version control system"
  homepage "https://rowanj.github.io/gitx/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with cask: "gitx"

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
