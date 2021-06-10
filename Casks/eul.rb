cask "eul" do
  version "1.5.21"
  sha256 "394dba8d09e33e1d0f02c6fbafb00ba30142c158d140b3658551f74276361d5c"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
