cask "filemaker-pro" do
  version "19.3.1.43"
  sha256 "4014d7c1d8dd0a100da53e6bc4eba6a906191c350f2ee76df119d8d7a9f9bd17"

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
