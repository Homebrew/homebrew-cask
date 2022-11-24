cask "kigb" do
  version "2.0.8"
  sha256 "bdfe885e3621594bde4cd86a6e4161754b9a9268c956acaf5172cc75da285022"

  url "https://www.bannister.org/software/dlq/kigb-#{version.no_dots}.zip"
  name "KiGB"
  desc "Nintendo Game Boy/Game Boy Color emulator"
  homepage "https://www.bannister.org/software/kigb.htm"

  livecheck do
    url :homepage
    regex(/>\s*?KiGB\s+?v?(\d+(?:\.\d+)+)\s*?</i)
  end

  depends_on macos: ">= :mojave"

  app "KiGB v#{version}/KiGB.app"

  zap trash: [
    "~/Library/Application Support/Bannister/KiGB",
    "~/Library/Preferences/com.bannister.kigb.plist",
    "~/Library/Saved Application State/com.bannister.kigb.savedState",
  ]
end
