cask "aqua-data-studio" do
  version "20.6.1-4"
  sha256 "9d53a69bb8f9ae40db6970a1c498b91f8c057f0e91887f966f3f9ccdf6e2e520"

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast "https://www.aquafold.com/aquadatastudio_downloads"
  name "Aquafold Aqua Data Studio"
  homepage "https://www.aquafold.com/aquadatastudio"

  app "Aqua Data Studio.app"
end
