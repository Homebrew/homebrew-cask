cask "rotato" do
  version "111.1604418546"
  sha256 "0e5d6fd34fec8adfaf17ef43e8d964bdd2f2289c3f94039dc1cd7627bae3cae8"

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast "https://updates.devmate.com/com.mortenjust.Rendermock.xml",
          must_contain: "#{version.major}/#{version.minor}"
  name "Rotato"
  homepage "https://rotato.xyz/"

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end
