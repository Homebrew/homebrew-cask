cask "lemonlime" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.6"
  sha256 arm:   "2d064df6c68de9b5dfd5a5fa56d21da94c631e294c3264ca1c21c4bf40a7fd04",
         intel: "10465401db07944e154201c6125f5098dc6e8db8700c5cc74f27ad7ba29f90e7"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/Project-LemonLime/Project_LemonLime/releases/download/#{version}/lemon-Qt6.9.3-Release-#{arch}.dmg"
  name "lemonlime"
  desc "Tiny judging environment for OI contest based on Lemon + LemonPlus"
  homepage "https://github.com/Project-LemonLime/Project_LemonLime"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "lemon.app"

  zap trash: [
    "~/Documents/Project_LemonLime",
    "~/Library/Preferences/com.github.lemonlime.plist",
    "~/Library/Preferences/com.lemonlime.lemon.plist",
    "~/Library/Saved Application State/com.github.lemonlime.savedState",
  ]
end
