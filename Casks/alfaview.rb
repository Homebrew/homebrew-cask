cask "alfaview" do
  version "8.12.1"
  sha256 "6028b02fec473628bac312934c938edb22e0ccb1778c67be5ae2b8d551d14879"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    strategy :page_match
    regex(%r{href=.*?/alfaview-mac-production-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
