cask "eul" do
  version "1.5.20"
  sha256 "a9a51a339cd89c96fbc88671eaa99d05995cd1a6a4c991a4882d191145807b35"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
