cask "sqlworkbenchj" do
  version "133"
  sha256 "e445598800435baa0a206a40aba62d83031bb2130420abbc935f6ddc5d638354"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "SQLWorkbenchJ.app"

  # No zap stanza required

  caveats do
    depends_on_java "11+"
  end
end
