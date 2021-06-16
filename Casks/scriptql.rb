cask "scriptql" do
  version :latest
  sha256 :no_check

  url "https://kainjow.com/downloads/ScriptQL_qlgenerator.zip"
  name "ScriptQL"
  desc "AppleScript Quick Look plugin"
  homepage "https://kainjow.com/"

  qlplugin "ScriptQL.qlgenerator"
end
