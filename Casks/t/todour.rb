cask "todour" do
  version "2.22"
  sha256 "060e5a84e9179e2eefadeddaf110ac5720b3a2064e39d470d84391a36ab70318"

  url "https://nerdur.com/Todour-v#{version}.dmg"
  name "Todour"
  desc "Todo.txt application Todour"
  homepage "https://nerdur.com/todour-pl/"

  livecheck do
    url :homepage
    regex(/href=.*?Todour[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Todour.app"

  zap trash: "~/Library/Preferences/com.nerdur.Todour.plist"
end
