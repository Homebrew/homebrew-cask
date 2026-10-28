cask "aion" do
  version "2.12.25"
  sha256 "14e8b05d4057785886be14febebae6089e653020e0bc8aa78d82913589cc907b"

  url "https://aion.7caifei.com/download/Aion_#{version}_manual.dmg"
  name "Aion"
  desc "Auto-quit truly idle apps without interrupting active work"
  homepage "https://aion.7caifei.com/"

  livecheck do
    url "https://aion.7caifei.com/aion/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Aion.app"

  uninstall quit: "com.7fei.Aion"
end
