cask "juicebar" do
  version "1.0.83"
  sha256 "60dbaee5d9d71951ade671bcf84bcd867ff88fd4c87a5b83a3decb7d5144ef9f"

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
