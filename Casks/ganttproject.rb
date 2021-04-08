cask "ganttproject" do
  version "3.0.3000"
  sha256 "be30dc8ded552109f16c4f4388a440f7a09aa3151632832cb30c62efb5d875de"

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
