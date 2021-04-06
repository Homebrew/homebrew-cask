cask "signet" do
  version "1.3"
  sha256 "ea48e77577e46848d5a3861782ddaaf05a725e6a4f14802ee29bc20bd88aeb50"

  url "https://eclecticlightdotcom.files.wordpress.com/2020/09/#{token}#{version.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com"
  name "Signet"
  desc "Scans and checks bundle signatures"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  app "#{token}#{version.no_dots}/Signet.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Signet",
    "~/Library/Preferences/co.eclecticlight.Signet.plist",
    "~/Library/Saved Application State/co.eclecticlight.Signet.savedState",
  ]
end
