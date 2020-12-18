cask "pomello" do
  version "0.10.14"
  sha256 :no_check

  url "https://pomelloapp.com/download/mac/latest"
  appcast "https://pomelloapp.com/download/mac"
  name "Pomello"
  homepage "https://pomelloapp.com/"

  app "Pomello.app"
end
