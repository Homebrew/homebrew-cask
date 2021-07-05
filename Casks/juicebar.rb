cask "juicebar" do
  version "1.0.81"
  sha256 "80942083efb236815cc64e0f667fabf145102a3690edf427a458cf7ae4aa46b6"

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name "JuiceBar"
  desc "Marketplace for Resolume"
  homepage "https://get-juicebar.com/"

  livecheck do
    url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
    strategy :header_match
  end

  app "JuiceBar.app"
end
