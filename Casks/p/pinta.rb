cask "pinta" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.2"
  sha256 arm:   "daad4b3550e7d5f27928ccb9ca99392aa46a5ef71cfd54ce72c0b7a810f4f993",
         intel: "2f386c0d77008b1beab5153d877d5dd750f52e866621ef1ee734143f052b9f83"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

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
