cask "pinta" do
  version "1.7.1"
  sha256 "f4146af00919c64bb544461d896bfab98a6249183f3d47d78af4b2b125c9ee8e"

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta.app.zip",
      verified: "github.com/PintaProject/Pinta/"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  depends_on cask: "mono-mdk"

  app "Pinta.app"
end
