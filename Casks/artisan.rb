cask "artisan" do
  version "2.8.0"

  if MacOS.version >= :catalina
    sha256 "f701a9c162decf09fedfc289b8ef419955e05232cf8223684a7775500824f52f"
    url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg",
        verified: "github.com/artisan-roaster-scope/artisan/"
  else
    sha256 "4b65aac2cddb3ab95bbc8020f2d0cb49dadf3d31277e63285d02ae047d72f530"
    url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-legacy-#{version}.dmg",
        verified: "github.com/artisan-roaster-scope/artisan/"
  end

  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  depends_on macos: ">= :high_sierra"

  app "Artisan.app"
end
