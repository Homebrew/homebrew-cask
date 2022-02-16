cask "logmein-client" do
  version "4.1.7756,4.1.0.7756"
  sha256 :no_check

  url "https://secure.logmein.com/LogMeInClientMac.dmg"
  name "LogMeIn Client"
  desc "Remote access tool"
  homepage "https://www.logmein.com/pro"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "LogMeIn Client.app"
end
