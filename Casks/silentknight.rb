cask "silentknight" do
  version "1.9,2020.07"
  sha256 "7bf565233f0ecdee4a8de0429b49f498290c4defc2d7c22dd97e101192d03534"

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/silentknight#{version.before_comma.no_dots}.zip"
  appcast "https://eclecticlight.co/lockrattler-systhist/"
  name "SilentKnight"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  app "silentknight#{version.before_comma.no_dots}/SilentKnight.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.SilentKnight",
    "~/Library/Preferences/co.eclecticlight.SilentKnight.plist",
    "~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState",
  ]
end
