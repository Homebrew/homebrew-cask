cask "captin" do
  version "1.1.0,119:1585846526"
  sha256 "79e75a8a3b6b6d576b9f06564bca033d7f2fe6b456484d15043a08511b495491"

  # dl.devmate.com/com.100hps.captin/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg"
  appcast "https://updates.devmate.com/com.100hps.captin.xml"
  name "Captin"
  homepage "http://captin.strikingly.com/"

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
