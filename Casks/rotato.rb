cask "rotato" do
  version "112.1604697138"
  sha256 "4d68cbb8832e23d306f34123a65de3788c70e3f6eb49c055136febc8f864405c"

  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip",
      verified: "dl.devmate.com/com.mortenjust.Rendermock/"
  appcast "https://updates.devmate.com/com.mortenjust.Rendermock.xml",
          must_contain: "#{version.major}/#{version.minor}"
  name "Rotato"
  homepage "https://rotato.xyz/"

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end
