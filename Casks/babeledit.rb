cask "babeledit" do
  version "4.0.3"
  sha256 "42b270ccaff08784b922e58e94e56e977c59ed0282a28fe9dc48578dab36fdf7"

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  name "BabelEdit"
  desc "Translation editor"
  homepage "https://www.codeandweb.com/babeledit"

  livecheck do
    url "https://www.codeandweb.com/babeledit/download"
    regex(%r{babeledit/download/v?(\d+(?:\.\d+)+)/mac-64}i)
  end

  auto_updates true

  app "BabelEdit.app"

  zap trash: "~/Library/Preferences/de.code-and-web.BabelEdit.plist"
end
