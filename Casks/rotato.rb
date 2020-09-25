cask "rotato" do
  version "107.1601025597"
  sha256 "fec11e97b33726d4544a218c175fd67297481e66eb9e01ec0f84e537c89c5d54"

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast "https://updates.devmate.com/com.mortenjust.Rendermock.xml",
          must_contain: "#{version.major}/#{version.minor}"
  name "Rotato"
  homepage "https://rotato.xyz/"

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end
