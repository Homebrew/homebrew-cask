cask "edfbrowser" do
  version "1.77,d46af4a00350581592aff8e210fe8295"
  sha256 "d51f87e1d08fac2f6144219833a60e9fa59deab4d7bc0b260c29d57169784fe5"

  # gitlab.com/whitone/EDFbrowser/ was verified as official when first introduced to the cask
  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.after_comma}/EDFbrowser-#{version.before_comma}.dmg"
  appcast "https://gitlab.com/whitone/EDFbrowser/-/tags?format=atom"
  name "EDFbrowser"
  homepage "https://www.teuniz.net/edfbrowser"

  app "EDFbrowser.app"
end
