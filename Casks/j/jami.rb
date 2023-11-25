cask "jami" do
  version "2023112509"
  sha256 "36f4e8fbdee7d9b98583accf66648d05c490a5c3ff07ebefcb11eef6a157bd04"

  url "https://dl.jami.net/mac_osx/jami#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    regex(/jami(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
