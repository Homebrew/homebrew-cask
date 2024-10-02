cask "sqlworkbenchj" do
  version "124"
  sha256 "2173c7f00172bef3fed23e7f57e168a9d156c72c311af032ba469139f80d9fe9"

  url "https://www.sql-workbench.eu/archive/Workbench-Build#{version}-Mac.tgz"
  name "SQL Workbench/J"
  desc "DBMS-independent SQL query tool"
  homepage "https://www.sql-workbench.eu/"

  livecheck do
    url "https://www.sql-workbench.eu/download-archive.html"
    regex(/Workbench[._-]Build(\d+)[._-]Mac\.t/i)
  end

  app "SQLWorkbenchJ.app"

  postflight do
    app_path = "#{appdir}/SQLWorkbenchJ.app"

    launcher_script = <<~EOS
      #!/bin/sh
      cd "$(dirname "$0")"/../Java
      exec java -Dapple.laf.useScreenMenuBar=true -Dapple.awt.showGrowBoxtrue=true -Xmx2048m -Xdock:name=SQLWorkbench/J -jar sqlworkbench.jar
    EOS

    FileUtils.rm("#{app_path}/Contents/MacOS/JavaAppLauncher")
    File.write("#{app_path}/Contents/MacOS/JavaAppLauncher", launcher_script)

    FileUtils.chmod "+x", "#{app_path}/Contents/MacOS/JavaAppLauncher"
  end

  # No zap stanza required

  caveats do
    depends_on_java "11+"
    requires_rosetta

    <<~EOS
      Due to macOS security restrictions, you may need to right-click on "SQLWorkbenchJ.app" in the /Applications folder and select "Open" to launch the application for the first time.
    EOS
  end
end
