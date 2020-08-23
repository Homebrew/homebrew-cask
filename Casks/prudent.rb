cask "prudent" do
  version "23.0.43.3,23"
  sha256 "31fed493403a8bc257472cf74cf8b6bf039c845b9ef3a98b41566b252c1a8b86"

  # github.com/PrudentMe/main/ was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast "https://github.com/PrudentMe/main/releases.atom",
          must_contain: version.after_comma
  name "Prudent"
  homepage "https://prudent.me/"

  app "Prudent.app"
end
