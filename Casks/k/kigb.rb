cask "kigb" do
  version "2.0.9"
  sha256 "d14607524b9843cb70e6818df61faa213cdaebb79ac355a52e3ab283393e9c2b"

  url "https://www.bannister.org/software/dlh/kigb-#{version.no_dots}.zip"
  name "KiGB"
  desc "Nintendo Game Boy/Game Boy Color emulator"
  homepage "https://www.bannister.org/software/kigb.htm"

  livecheck do
    url :homepage
    regex(/>\s*?KiGB\s+?v?(\d+(?:\.\d+)+)\s*?</i)
  end

  depends_on macos: ">= :high_sierra"

  app "KiGB v#{version}/KiGB.app"

  zap trash: [
    "~/Library/Application Support/Bannister/KiGB",
    "~/Library/Preferences/com.bannister.kigb.plist",
    "~/Library/Saved Application State/com.bannister.kigb.savedState",
  ]
end
