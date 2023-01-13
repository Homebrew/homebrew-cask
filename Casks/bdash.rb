cask "bdash" do
  version "1.15.3"
  sha256 "7575147610340cdd6e4171aedafd303e2d24240d4fe5165736b7619251f4e5eb"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
