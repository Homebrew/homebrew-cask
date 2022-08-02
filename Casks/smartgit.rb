cask "smartgit" do
  if MacOS.version <= :sierra
    arch = "macosx"
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"
  elsif Hardware::CPU.intel?
    arch = "x86_64"
    version "21.2.3"
    sha256 "ed21b12d502be1528a163db0f9aea79d7c663ef6c02fdbada422a6d0657948dd"
  else
    arch = "aarch64"
    version "21.2.3"
    sha256 "6d66ead659cab90f07957945651006e05ed8c8baafd5b7fbacc8e78acdf0c1d0"
  end

  url "https://www.syntevo.com/downloads/smartgit/smartgit-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/download/"
    regex(/href=.*?smartgit[._-]#{arch}[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)
          .map { |match| match[0].tr("_", ".") }
    end
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
