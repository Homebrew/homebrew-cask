cask "rotato" do
  version "106.1600944816"
  sha256 "9f52fb1a7723e0e7189a1b272811218288b0eab9f522674b19816f0648bf09d0"

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast "https://updates.devmate.com/com.mortenjust.Rendermock.xml",
          must_contain: "#{version.major}/#{version.minor}"
  name "Rotato"
  homepage "https://rotato.xyz/"

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end
