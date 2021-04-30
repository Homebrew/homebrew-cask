cask "jedit" do
  version "5.6.0"
  sha256 "7fc6bcf042401899915793e038bab826546d91b593b6f3855e9f29d4101aab61"

  url "https://downloads.sourceforge.net/jedit/jedit#{version}install.dmg",
      verified: "sourceforge.net/jedit/"
  appcast "https://sourceforge.net/projects/jedit/rss"
  name "jEdit"
  homepage "http://www.jedit.org/"

  app "jEdit.app"
end
