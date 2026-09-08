cask "open-eid" do
  version "26.8.7.8430"
  sha256 "5a93377006b199ca0af0ce7d1aed62369774853037e3ed60991d7f109b56509b"

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name "Open-EID"
  desc "Estonian ID-card drivers, authentication components & signing components"
  homepage "https://www.id.ee/en/article/install-id-software/"

  livecheck do
    url :homepage
    regex(/href=.*?Open[._-]EID[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  pkg "Open-EID.pkg"

  uninstall script: {
    executable: "uninstall.sh",
    input:      ["y\n"],
    sudo:       true,
  }

  # No zap stanza required
end
