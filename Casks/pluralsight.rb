cask "pluralsight" do
  version "1.12.261"
  sha256 "1eb9d66b43d987575c0b8ce8b8b5505c19553d4ade46b89a88e06cbffc4db53f"

  url "https://macapp.pluralsight.com/installpluralsight#{version}.dmg"
  appcast "https://macapp.pluralsight.com/appcast"
  name "Pluralsight"
  homepage "https://www.pluralsight.com/"

  depends_on macos: ">= :high_sierra"

  app "Pluralsight.app"
end
