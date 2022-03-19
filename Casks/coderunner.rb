cask "coderunner" do
  version "4.1,62956"
  sha256 "3f6490d37f28b1e6185dd2aa88f63d9cd8e47c174cc6e46051981d39c946cb71"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version.csv.first}.zip"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Support/CodeRunner",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState",
  ]
end
