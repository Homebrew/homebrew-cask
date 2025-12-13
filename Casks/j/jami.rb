cask "jami" do
  version "2.37,2025121216"
  sha256 "73db7f3938396134355505317596e7e27e48815cdadace1bf23513e36a02218f"

  url "https://dl.jami.net/mac_osx/jami#{version.csv.second}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
