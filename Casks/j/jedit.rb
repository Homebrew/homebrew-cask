cask "jedit" do
  version "5.7.0"
  sha256 "5f3582c076e400dc79673a0b1f5a3314e1229288791d9019c693f2108d6d0bb5"

  url "https://downloads.sourceforge.net/jedit/jedit#{version}install.dmg",
      verified: "sourceforge.net/jedit/"
  name "jEdit"
  desc "Text editor"
  homepage "https://www.jedit.org/"

  app "jEdit.app"

  caveats do
    depends_on_java "11+"
  end
end
