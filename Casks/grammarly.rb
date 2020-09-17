cask "grammarly" do
  version :latest
  sha256 :no_check

  url "https://download-editor.grammarly.com/osx/Grammarly.dmg"
  name "Grammarly"
  desc "Utility to fix grammar errors and style issues in text"
  homepage "https://www.grammarly.com/"

  app "Grammarly.app"
end
