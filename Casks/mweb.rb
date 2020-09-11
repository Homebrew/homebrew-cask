cask "mweb" do
  version "3.4.1"
  sha256 "6208fab4e43c83b0fac4e57333d9277c18d841df8bbac9bf93e36b3b6753ae5b"

  # dl.devmate.com/com.coderforart.MWeb3/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg"
  appcast "https://updates.devmate.com/com.coderforart.MWeb3.xml"
  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  depends_on macos: ">= :sierra"

  app "MWeb.app"
end
