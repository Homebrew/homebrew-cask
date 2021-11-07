cask "pagico" do
  version "10.0,20211005"
  sha256 "43d7710d4705ef2a5821fcb611cf67304fcbfef7c77fb0ec2e0c93fbe98a6be0"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.after_comma}.dmg"
  name "Pagico"
  desc "Manage all your tasks, files, and notes"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.macOS.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Pagico.app"
end
