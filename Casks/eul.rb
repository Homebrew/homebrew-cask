cask "eul" do
  version "1.5.16"
  sha256 "d27ad9349806d2863303640d9063b4bbc358ba0d4cba3fc388f40430e433cd78"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
