cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.5"
  sha256 arm:   "c5ba1f3bb094a63a7a54cb64ea7864aee474e46c2f86292dead5dbc8b1e9a351",
         intel: "114f119158c31139709d083e12a825aebb798d51630789ec703f4e29dfb93377"

  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta-macos-#{arch}.dmg",
      verified: "github.com/PintaProject/Pinta/"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  app "Pinta.app"

  zap trash: [
    "~/Library/Preferences/com.ximian.pinta.plist",
    "~/Library/Saved Application State/com.ximian.pinta.savedState",
  ]
end
