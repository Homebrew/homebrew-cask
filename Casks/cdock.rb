cask "cdock" do
  version "4.1.5"
  sha256 "06ecfddd1b3dd91624602305bbb5f0d4bf27a234bbd939d2b6ce0c7ca2de8890"

  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/cDock#{version.major}/cDock.zip",
      verified: "raw.githubusercontent.com/w0lfschild"
  appcast "https://raw.githubusercontent.com/w0lfschild/app_updates/master/cDock#{version.major}/appcast.xml"
  name "cDock"
  desc "Customize the look and feel of the Dock"
  homepage "https://www.macenhance.com/cdock.html"

  depends_on macos: ">= :mojave"

  app "cDock.app"
end
