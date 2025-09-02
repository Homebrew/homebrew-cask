cask "leocad" do
  version "25.09"
  sha256 "6e4664f6d5a9c2ffe3855c2bfcdffc32f666efe759076d976818b28a911eb9d8"

  url "https://github.com/leozide/leocad/releases/download/v#{version}/LeoCAD-macOS-#{version}.dmg"
  name "LeoCAD"
  desc "CAD program for creating virtual LEGO models"
  homepage "https://github.com/leozide/leocad"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :sierra"

  app "LeoCAD.app"

  zap trash: [
    "~/Library/Caches/LeoCAD Software",
    "~/Library/Preferences/org.leocad.LeoCAD.plist",
    "~/Library/Saved Application State/org.leozide.LeoCAD.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
