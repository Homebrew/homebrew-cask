cask "mweb" do
  version "3.4.2"
  sha256 "ad4c9a590ed0c0089f6849f710e3b8a0f87f737d51c94f61d56193716d494c16"

  # dl.devmate.com/com.coderforart.MWeb3/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg"
  appcast "https://updates.devmate.com/com.coderforart.MWeb3.xml"
  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  depends_on macos: ">= :sierra"

  app "MWeb.app"
end
