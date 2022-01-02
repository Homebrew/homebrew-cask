cask "openin" do
  version "3.0.3"
  sha256 "e6f17699c9cb59f53c17b07f00b225dcfdd15fefc2e967ebd4999558963f9529"

  url "https://loshadki.app/openin/OpenIn%20#{version}.dmg"
  name "openin"
  desc "Open links/files with specific browsers/apps"
  homepage "https://loshadki.app/openin/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/OpenIn%20(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "OpenIn.app"

  zap trash: [
    "~/Library/Containers/app.loshadki.OpenIn",
    "~/Library/Containers/app.loshadki.OpenInLauncher",
  ]
end
