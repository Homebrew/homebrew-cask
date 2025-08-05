cask "nestopia" do
  version "1.4.5"
  sha256 "c427cad8bbc9973e955d787faf40a7dc76610c935097beb307c2496c776a0bb7"

  url "https://www.bannister.org/software/dlh/nestopia-#{version.no_dots}.zip"
  name "Nestopia"
  desc "Nintendo Entertainment System (NES) emulator"
  homepage "https://www.bannister.org/software/nestopia.htm"

  livecheck do
    url :homepage
    regex(/>\s*?Nestopia\s+?v?(\d+(?:\.\d+)+)\s*?</i)
  end

  depends_on macos: ">= :high_sierra"

  app "Nestopia v#{version}/Nestopia.app"

  zap trash: [
    "~/Library/Application Support/Bannister/Nestopia",
    "~/Library/Preferences/com.bannister.nestopia.plist",
    "~/Library/Saved Application State/com.bannister.nestopia.savedState",
  ]
end
