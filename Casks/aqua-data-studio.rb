cask "aqua-data-studio" do
  version "21.0.3"
  sha256 "2a092e86eed401d632da60632db42049d65e4255486e97b6e7c31122b130b842"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://www.aquafold.com/aquadatastudio"

  app "Aqua Data Studio.app"
end
