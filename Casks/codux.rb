cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.5.0"
  sha256 arm:   "a9b69ac76aa6fb171801837f5bf6a56c52386d5a6d68555b519165dd8b544354",
         intel: "605b58b777549f9d204ec1d036ff4bb7dd790611d6d598a2c083b1e6350e43ad"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash:
             [
               "~/Library/Application Support/Codux",
               "~/Library/Preferences/com.wixc3.wcs.plist",
               "~/Library/Saved Application State/com.wixc3.wcs.savedState",
             ]
end
