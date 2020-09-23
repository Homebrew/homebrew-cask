cask "spatterlight" do
  version "0.5.13b"
  sha256 "3a145efc57aa4b206dc3a95bc81debe7385b83371a1e8d74c0372c77c4e43bf6"

  # github.com/angstsmurf/spatterlight/ was verified as official when first introduced to the cask
  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Catalina.zip"
  appcast "https://github.com/angstsmurf/spatterlight/releases.atom"
  name "Spatterlight"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
