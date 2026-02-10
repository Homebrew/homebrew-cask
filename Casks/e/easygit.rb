cask "easygit" do
  version "1.0.0"
  sha256 "1c6cfada75b1b9a11d1567d59674e23dc2311e96198a84da1db447c2fd029201"

  url "https://github.com/shohamtal/EasyGit/releases/download/v#{version}/EasyGit.zip"
  name "EasyGit"
  desc "Lightweight native Git GUI built with SwiftUI"
  homepage "https://github.com/shohamtal/EasyGit"

  depends_on macos: ">= :sonoma"

  app "EasyGit.app"

  zap trash: "~/Library/Preferences/com.easygit.app.plist"
end
