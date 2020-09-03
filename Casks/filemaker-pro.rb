cask "filemaker-pro" do
  version "19.0.1.116"
  sha256 "b561a0ebc62f7b6f50bc5e1b7c05660e5a1ead2027dd296907b3ff644f0b51dc"

  url "https://downloads.claris.com/esd/fmp_#{version}.dmg"
  appcast "https://www.filemaker.com/redirects/ss.txt"
  name "FileMaker Pro"
  desc "Cross-platform relational database and rapid application development platform"
  homepage "https://www.claris.com/filemaker/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FileMaker Pro.app"

  caveats do
    license "https://www.claris.com/company/legal/docs/eula/filemaker-pro/fmp_eula_en.pdf"
  end
end
