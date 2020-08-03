cask "duplicacy-web-edition" do
  version "1.4.0"
  sha256 "630d7df074d57a2feed6ca86fcd51b93b28044fd0145a47726e92f798466c37c"

  # acrosync.com/duplicacy-web/ was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast "https://duplicacy.com/download.html"
  name "Duplicacy Web Edition"
  homepage "https://duplicacy.com/"

  app "Duplicacy Web Edition.app"

  zap trash: "~/.duplicacy-web"
end
