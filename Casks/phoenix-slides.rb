cask "phoenix-slides" do
  version "1.4.5"
  sha256 "78c491f543abaef0da62fc892433d9698f6f5badd98210d0ac4c4865d289cdd6"

  # github.com/gobbledegook/creevey/ was verified as official when first introduced to the cask
  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots}.dmg"
  appcast "https://github.com/gobbledegook/creevey/releases.atom"
  name "Phoenix Slides"
  homepage "https://blyt.net/phxslides/"

  app "Phoenix Slides.app"
end
