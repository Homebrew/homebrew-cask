cask "rnote" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.0+199"
  sha256 arm:   "c229895f1e844ce8e81e5fd7e34fbc3c9404cefe136cb66b9ca7601b86c098d7",
         intel: "75aa6d6df454e237db79b9f3d97baa923ab016f298141b01bea9468524bf9288"

  url "https://gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/#{version}/Rnote-#{version}_#{arch}.dmg",
      verified: "gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/"
  name "Rnote"
  desc "Sketch and take handwritten notes"
  homepage "https://rnote.flxzt.net/"

  livecheck do
    url "https://gitlab.com/dehesselle/rnote_macos.git"
  end

  depends_on macos: ">= :catalina"

  app "Rnote.app"

  zap trash: "~/Library/Preferences/net.flxzt.Rnote.plist"
end
