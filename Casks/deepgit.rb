cask "deepgit" do
  version "4.1.1"
  sha256 "80c6cfad0b64005072e3f2082a8d718e659078f6dfe1efe5ad4986416aca5bd1"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://syntevo.com/deepgit/download"
    strategy :page_match do |page|
      v = page[%r{href=.*?/deepgit-macosx-(\d+(?:_\d+)*)\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "DeepGit.app"
end
