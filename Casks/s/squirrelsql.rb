cask "squirrelsql" do
  version "4.7.1"
  sha256 "6f31f2559b50df85e05b7e6e3e208e28067cc8bb8bd7dc240ba686fddb02381d"

  url "https://downloads.sourceforge.net/squirrel-sql/1-stable/#{version}/squirrel-sql-#{version}-MACOSX-install.jar",
      verified: "sourceforge.net/squirrel-sql/"
  name "SQuirrel SQL"
  desc "Graphical Java program for viewing the structure of a JDBC compliant database"
  homepage "http://www.squirrelsql.org/"

  container type: :naked

  installoptions = "#{staged_path}/install-options.xml"

  preflight do
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    File.open(installoptions, "w") do |f|
      f.print <<~EOS
        <?xml version="1.0" encoding="UTF-8" standalone="no"?>
        <AutomatedInstallation langpack="eng">
        <com.izforge.izpack.panels.hello.HelloPanel id="HelloPanel_0"/>
        <com.izforge.izpack.panels.htmlinfo.HTMLInfoPanel id="HTMLInfoPanel_1"/>
        <com.izforge.izpack.panels.target.TargetPanel id="TargetPanel_2">
        <installpath>#{appdir}/SQuirreLSQL.app</installpath>
        </com.izforge.izpack.panels.target.TargetPanel>
        <com.izforge.izpack.panels.packs.PacksPanel id="PacksPanel_3">
        <pack index="0" name="Base" selected="true"/>
        <pack index="1" name="Standard" selected="true"/>
        <pack index="2" name="Optional Plugin - Mac OS Plugin (older Mac versions only)" selected="true"/>
        <pack index="3" name="Optional Plugin - Greenplum" selected="true"/>
        <pack index="4" name="Optional Plugin - WIKI table configurations" selected="true"/>
        <pack index="5" name="Optional Plugin - Swing Violation Dedector" selected="true"/>
        <pack index="6" name="Optional Plugin - Multi Source" selected="true"/>
        <pack index="7" name="Optional Plugin - Vertica" selected="true"/>
        <pack index="8" name="Optional Plugin - DB2" selected="true"/>
        <pack index="9" name="Optional Plugin - Derby" selected="true"/>
        <pack index="10" name="Optional Plugin - Firebird " selected="true"/>
        <pack index="11" name="Optional Plugin - Hibernate" selected="true"/>
        <pack index="12" name="Optional Plugin - H2 " selected="true"/>
        <pack index="13" name="Optional Plugin - Informix " selected="true"/>
        <pack index="14" name="Optional Plugin - Microsoft SQL Server " selected="true"/>
        <pack index="15" name="Optional Plugin - MySQL " selected="true"/>
        <pack index="16" name="Optional Plugin - Netezza " selected="true"/>
        <pack index="17" name="Optional Plugin - Oracle" selected="true"/>
        <pack index="18" name="Optional Plugin - PostgreSQL " selected="true"/>
        <pack index="19" name="Optional Plugin - Session Scripts" selected="true"/>
        <pack index="20" name="Optional Plugin - Smart Tools " selected="true"/>
        <pack index="21" name="Optional Plugin - SQL Parametrisation " selected="true"/>
        <pack index="22" name="Optional Plugin - SQL Replace " selected="true"/>
        <pack index="23" name="Optional Plugin - SQL Validator " selected="true"/>
        <pack index="24" name="Optional Plugin - Sybase " selected="true"/>
        <pack index="25" name="Optional Plugin - High resolution icon " selected="true"/>
        <pack index="26" name="Optional Plugin - Internationalization " selected="true"/>
        <pack index="27" name="Optional Plugin - Intersystems Cache Plugin " selected="true"/>
        <pack index="28" name="Optional Translation - Brazilian Portuguese" selected="true"/>
        <pack index="29" name="Optional Translation - Bulgarian" selected="true"/>
        <pack index="30" name="Optional Translation - Czech" selected="true"/>
        <pack index="31" name="Optional Translation - Simplified Chinese" selected="true"/>
        <pack index="32" name="Optional Translation - French" selected="true"/>
        <pack index="33" name="Optional Translation - German" selected="true"/>
        <pack index="34" name="Optional Translation - Italian" selected="true"/>
        <pack index="35" name="Optional Translation - Japanese" selected="true"/>
        <pack index="36" name="Optional Translation - Korean" selected="true"/>
        <pack index="37" name="Optional Translation - Polish" selected="true"/>
        <pack index="38" name="Optional Translation - Russian" selected="true"/>
        <pack index="39" name="Optional Translation - Spanish" selected="true"/>
        </com.izforge.izpack.panels.packs.PacksPanel>
        <com.izforge.izpack.panels.install.InstallPanel id="InstallPanel_4"/>
        <com.izforge.izpack.panels.finish.FinishPanel id="FinishPanel_5"/>
        </AutomatedInstallation>
      EOS
    end
  end

  postflight do
    system_command "/usr/bin/java",
                   args: ["-jar", "#{staged_path}/squirrel-sql-#{version}-MACOSX-install.jar", installoptions.to_s]
  end

  uninstall_preflight do
    system_command "/usr/bin/java",
                   args: ["-jar", "#{appdir}/SQuirreLSQL.app/Uninstaller/uninstaller.jar", "-f", "-c"]
  end

  uninstall delete: "#{appdir}/SQuirreLSQL.app"

  zap trash: "~/.squirrel-sql"

  caveats do
    depends_on_java "11+"
  end
end
