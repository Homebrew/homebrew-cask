cask "artisan" do
  version "2.8.0"
  sha256 "f701a9c162decf09fedfc289b8ef419955e05232cf8223684a7775500824f52f"

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
      verified: "github.com/artisan-roaster-scope/artisan/"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :catalina"

  app "Artisan.app"
end
