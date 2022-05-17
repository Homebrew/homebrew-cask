cask "babeledit" do
  version "3.0.0"
  sha256 "2582da469e16312eb6b9f960dd4cd5c81576f846cd1e652f28fa2874d3b628c8"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/babeledit/download"
    regex(%r{babeledit/download/v?(\d+(?:\.\d+)+)/mac-64}i)
  end

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
