cask "nestopia" do
  version "1.4.3"
  sha256 :no_check

  url "https://www.bannister.org/cgi-bin/download.cgi?nestopia"
  name "Nestopia"
  homepage "https://www.bannister.org/software/nestopia.htm"

  livecheck do
    url :homepage
    regex(/>\s*?Nestopia\s+?v?(\d+(?:\.\d+)+)\s*?</i)
  end

  depends_on macos: ">= :el_capitan"

  app "Nestopia v#{version}/Nestopia.app"

  zap trash: [
    "~/Library/Application Support/Bannister/Nestopia",
    "~/Library/Preferences/com.bannister.nestopia.plist",
    "~/Library/Saved Application State/com.bannister.nestopia.savedState",
  ]
end
