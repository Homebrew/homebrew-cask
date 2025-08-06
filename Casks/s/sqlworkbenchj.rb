cask "sqlworkbenchj" do
  version "132"
  sha256 "917cdad945bc2f634df0e95ef192c6e6238542618970b82129a993871344a326"

  url "https://www.sql-workbench.eu/Workbench-Build#{version}-Mac-with-optional-libs.tgz"
  name "SQL Workbench/J"
  desc "DBMS-independent SQL query tool"
  homepage "https://www.sql-workbench.eu/"

  livecheck do
    url "https://www.sql-workbench.eu/workbench_pad.xml"
    strategy :xml do |xml|
      xml.elements["//Program_Version"]&.text&.strip
    end
  end

  app "SQLWorkbenchJ.app"

  # No zap stanza required

  caveats do
    depends_on_java "11+"
  end
end
