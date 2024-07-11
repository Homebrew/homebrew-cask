cask "flash-decompiler-trillix" do
  version "5.3.1301"
  sha256 :no_check

  url "https://cdn.eltima.com/download/flash_decompiler.dmg",
      verified: "cdn.eltima.com/"
  name "Flash Decompiler Trillix"
  desc "Convert SWF files to editable FLA projects"
  homepage "https://www.flash-decompiler.com/mac.html"

  disable! date: "2024-07-03", because: "is 32-bit only"

  app "Flash Decompiler Trillix.app"
end
