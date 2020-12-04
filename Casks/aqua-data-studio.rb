cask "aqua-data-studio" do
  version "21.0.3"
  sha256 "9d53a69bb8f9ae40db6970a1c498b91f8c057f0e91887f966f3f9ccdf6e2e520"

  url "http://downloads.aquafold.com/v#{version}.0/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://www.aquafold.com/aquadatastudio"

  app "Aqua Data Studio.app"
end
