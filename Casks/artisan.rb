cask "artisan" do
  version "2.4.4"
  sha256 "bcb4200cd43d8e4ef7948b7889b475893de260950b8e3d454696ea0236092ff3"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  livecheck do
    url :url
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
