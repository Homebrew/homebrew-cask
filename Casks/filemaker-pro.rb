cask "filemaker-pro" do
  version "19.2.2.234"
  sha256 "723fccae725cfc54f50545eca68fde183492d2aaefd891fa38b8557dd26e7fa3"

  url "https://downloads.claris.com/esd/fmp_#{version}.dmg"
  name "FileMaker Pro"
  desc "Relational database and rapid application development platform"
  homepage "https://www.claris.com/filemaker/"

  livecheck do
    url "https://www.filemaker.com/redirects/ss.txt"
    strategy :page_match
    regex(%r{/fmp_(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FileMaker Pro.app"

  caveats do
    license "https://www.claris.com/company/legal/docs/eula/filemaker-pro/fmp_eula_en.pdf"
  end
end
