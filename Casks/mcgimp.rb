cask "mcgimp" do
  version "2.10.22"
  sha256 "87503501f4af1931296fe199f88afcdb4645dd0bbe4e4ddba4d0060f7417d00c"

  url "https://www.partha.com/downloads/GIMP/McGimp-#{version}.app.zip"
  name "McGimp"
  desc "Recompiled GIMP installation"
  homepage "https://www.partha.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/McGimp-(\d+(?:\.\d+)*)\.app\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "McGimp-#{version}.app"
end
