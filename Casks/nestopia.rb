cask "nestopia" do
  version "1.4.4"
  sha256 "fa05e849e68898abd851c18894b8fe22fb3ad7a17006f5584977f4d8b3bc4754"

  url "https://www.bannister.org/software/dlq/nestopia-#{version.no_dots}.zip"
  name "Nestopia"
  desc "Nintendo Entertainment System (NES) emulator"
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
