cask "ganttproject" do
  version "2.8.11,2396"
  sha256 "b8f64286ca9c04f606336994785c5ed3995c1842f8b1d82199f7ad0bb01d2851"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-r#{version.after_comma}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  homepage "https://www.ganttproject.biz/"

  livecheck do
    url "https://github.com/bardsoftware/ganttproject/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ganttproject-(\d+(?:.\d+)*)-r(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "GanttProject.app"
end
