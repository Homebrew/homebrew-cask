cask "eul" do
  version "1.3.3"
  sha256 "4e6c50bad74c33c245333eb577beea5ec549a12276fc527608d07f0d03f9422f"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
