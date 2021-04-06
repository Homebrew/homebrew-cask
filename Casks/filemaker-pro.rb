cask "filemaker-pro" do
  version "19.2.1.14"
  sha256 "7e57f30e4f1a72063824240eff78b795de148a5233bfbfc6aaf10c101a269496"

  url "https://downloads.claris.com/esd/fmp_#{version}.dmg"
  appcast "https://www.filemaker.com/redirects/ss.txt"
  name "FileMaker Pro"
  desc "Relational database and rapid application development platform"
  homepage "https://www.claris.com/filemaker/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FileMaker Pro.app"

  caveats do
    license "https://www.claris.com/company/legal/docs/eula/filemaker-pro/fmp_eula_en.pdf"
  end
end
