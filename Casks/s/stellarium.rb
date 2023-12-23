cask "stellarium" do
  version "23.4"
  sha256 "a5e16e146305167d09ad5507e9d8cb4459f5ad2d712482dc4e0be97259f1298c"

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt6-macOS.zip",
      verified: "github.com/Stellarium/stellarium/"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
