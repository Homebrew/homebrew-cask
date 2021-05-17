cask "pagico" do
  version "9.10,20210515"
  sha256 "11089f6632c10a77189122b6c164083daf8181aa2eb99cc86ddcaa0d5eafeba0"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.after_comma}.dmg"
  name "Pagico"
  desc "Manage all your tasks, files, and notes"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.mac.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
