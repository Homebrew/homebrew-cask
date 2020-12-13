cask "mweb" do
  version "3.4.4,592"
  sha256 :no_check

  url "https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg",
      verified: "dl.devmate.com/com.coderforart.MWeb3/"
  appcast "https://updates.devmate.com/com.coderforart.MWeb3.xml"
  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  depends_on macos: ">= :sierra"

  app "MWeb.app"
end
