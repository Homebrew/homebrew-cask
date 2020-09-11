cask "mcgimp" do
  version "2.10.20"
  sha256 "45b55b3cbfb0e10a90ea0baa2fdeedc54687f4f9479bbcb78ed2a9c317dde33b"

  url "https://www.partha.com/downloads/GIMP/McGimp-#{version}.app.zip"
  name "McGimp"
  desc "Recompiled GIMP installation"
  homepage "https://www.partha.com/"

  depends_on macos: ">= :mojave"

  app "McGimp-#{version}.app"
end
