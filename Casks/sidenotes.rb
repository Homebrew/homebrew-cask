cask "sidenotes" do
  version "1.4,156"
  sha256 "f31cfc0decc06319ebd903f66e44c3a2db49fdc4132937d4104de067ed89996c"

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
