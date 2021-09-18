cask "sidenotes" do
  version "1.3.3,147"
  sha256 "608e128172a34fe21921976f8fc45fad5ba9a66ed6ffe872a94c70f7fc478e02"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version.before_comma}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
