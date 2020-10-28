cask "rotato" do
  version "110.1603196537"
  sha256 "58eb0490d004c3baf2cd18fd3aaf5df46370800146c38b9ae52760e83d7f89f5"

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast "https://updates.devmate.com/com.mortenjust.Rendermock.xml",
          must_contain: "#{version.major}/#{version.minor}"
  name "Rotato"
  homepage "https://rotato.xyz/"

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end
