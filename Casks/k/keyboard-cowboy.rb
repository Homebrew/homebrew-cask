cask "keyboard-cowboy" do
  version "3.23.1"
  sha256 "62307bd3660e81f15178d5f5954f99b884b508aa5f0cca018d1ab48e2e95cb94"

  url "https://github.com/zenangst/KeyboardCowboy/releases/download/#{version}/Keyboard.Cowboy.#{version}.dmg"
  name "Keyboard Cowboy"
  desc "Keyboard shortcut utility"
  homepage "https://github.com/zenangst/KeyboardCowboy"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Keyboard Cowboy.app"

  zap trash: "~/Library/Preferences/com.zenangst.Keyboard-Cowboy.plist"
end
