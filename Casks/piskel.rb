cask "piskel" do
  version "0.14.0"
  sha256 "c3f3e4fa5ac9495346dc30640b1e371062224bb4bb6eb26c5c3569151bff01e6"

  # drive.google.com/uc?export=download&id=1xLt5JbaEoA1fMJgsfbnuD9KMMbuEysbj was verified as official when first introduced to the cask
  url "https://drive.google.com/uc?export=download&id=1xLt5JbaEoA1fMJgsfbnuD9KMMbuEysbj"
  appcast "https://github.com/piskelapp/piskel/releases.atom"
  name "Piskel"
  homepage "https://www.piskelapp.com/"

  app "Piskel.app"

  zap trash: [
    "~/Library/Application Support/piskel",
    "~/Library/Caches/piskel",
    "~/Library/Preferences/com.nw-builder.piskel.plist",
    "~/Library/Saved Application State/com.nw-builder.piskel.savedState",
  ]
end
