cask "juicebar" do
  version "1.0.77"
  sha256 "20dbb59f8a95cac6639fc7c85add7152282b1045897c5eb1b79ae0492e508d54"

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
