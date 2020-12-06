cask "mweb" do
  version "3.4.3"
  sha256 "c3ddfeaf92798379fe0a6e749cefd5a2c819bb914d4224acc5492ccde9da6f53"

  # dl.devmate.com/com.coderforart.MWeb3/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg"
  appcast "https://updates.devmate.com/com.coderforart.MWeb3.xml"
  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  depends_on macos: ">= :sierra"

  app "MWeb.app"
end
