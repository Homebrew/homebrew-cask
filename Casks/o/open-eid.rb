cask "open-eid" do
  version "25.10.0.235"
  sha256 "88727940d3e023b325359595c41bb3a6b03650b10eaf54c67edaf688b0bfebe3"

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
