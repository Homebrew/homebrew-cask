cask "rotato" do
  version "105.1600440625"
  sha256 "56d332bc1c9d32e40cc74b06822d98916ecadfa4121e387fa2bfa9c11c47ec35"

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast "https://updates.devmate.com/com.mortenjust.Rendermock.xml",
          must_contain: "#{version.major}/#{version.minor}"
  name "Rotato"
  homepage "https://rotato.xyz/"

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end
