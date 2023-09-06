cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.33910"
  sha256 arm:   "cc913b7591d01dbff03656162929736583ff1b98bb40a06733b4493f8a52ab4c",
         intel: "fabe5d27e48112e2ff98725766704e9f4146041e1f21da8c078b92973037b115"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://derivative.ca/download/archive"
    regex(%r{<span class="field-content">(\d+(?:\.\d+)+)[\s<]}i)
  end

  depends_on macos: ">= :mojave"

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099/",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState/",
  ]
end
