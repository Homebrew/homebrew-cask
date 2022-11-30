cask "filemaker-pro" do
  version "19.6.1.45"
  sha256 "6e55000b9901b1eba79dd30a605ed543e89a88e59ee06edfb0595b2df79fe0b7"

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
