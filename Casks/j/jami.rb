cask "jami" do
  version "2.41,2026081410"
  sha256 "05b22cb151ea25aa55865df1713c3760c3ad1068fcd969fde9f831060524be7c"

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
  depends_on macos: :ventura

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
