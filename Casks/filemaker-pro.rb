cask "filemaker-pro" do
  version "19.5.3.300"
  sha256 "c751268fafa6294436960eeaa978a872a35073a1128dae52e41aac78fe084b2e"

  url "https://downloads.claris.com/esd/fmp_#{version}.dmg"
  name "FileMaker Pro"
  desc "Relational database and rapid application development platform"
  homepage "https://www.claris.com/filemaker/"

  livecheck do
    url "https://www.filemaker.com/redirects/ss.txt"
    regex(%r{/fmp[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FileMaker Pro.app"

  caveats do
    license "https://www.claris.com/company/legal/docs/eula/filemaker-pro/fmp_eula_en.pdf"
  end
end
