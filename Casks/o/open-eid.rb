cask "open-eid" do
  version "25.5.0.1954"
  sha256 "1ceef9fa6ae4146275578322e2244fdc745d917e9042a9f92bedb1e36fd9a9a5"

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name "Open-EID"
  desc "Estonian ID-card drivers, authentication components & signing components"
  homepage "https://www.id.ee/en/article/install-id-software/"

  livecheck do
    url :homepage
    regex(/href=.*?Open[._-]EID[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Open-EID.pkg"

  uninstall script: {
    executable: "uninstall.sh",
    input:      ["y\n"],
    sudo:       true,
  }

  # No zap stanza required
end
