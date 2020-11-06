cask "ganttproject" do
  version "2.8.11,r2396"
  sha256 "b8f64286ca9c04f606336994785c5ed3995c1842f8b1d82199f7ad0bb01d2851"

  # github.com/bardsoftware/ganttproject/ was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "https://github.com/bardsoftware/ganttproject/releases.atom"
  name "GanttProject"
  homepage "https://www.ganttproject.biz/"

  app "GanttProject.app"
end
