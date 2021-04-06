cask "fugu" do
  version "1.2.1pre1"
  sha256 "3f96ac9c94516c100bab5fe03cc1571634955f15e1949d32d675b91f5058e328"

  url "https://downloads.sourceforge.net/fugussh/Unstable/fugu-#{version}/Fugu-#{version}.zip"
  appcast "https://sourceforge.net/projects/fugussh/rss"
  name "Fugu"
  homepage "https://sourceforge.net/projects/fugussh/"

  app "Fugu.app"
end
