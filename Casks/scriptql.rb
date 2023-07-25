cask "scriptql" do
  version "1.1"
  sha256 :no_check

  url "https://kainjow.com/downloads/ScriptQL_qlgenerator.zip"
  name "ScriptQL"
  desc "AppleScript Quick Look plugin"
  homepage "https://kainjow.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  qlplugin "ScriptQL.qlgenerator"

  # No zap stanza required
end
