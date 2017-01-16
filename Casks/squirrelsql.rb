cask 'squirrelsql' do
  version '3.7.1'
  sha256 '4ee542f0fc51489de5c529d242b5731140cb993beeba853ee7675c010cdc81e3'

  # sourceforge.net/squirrel-sql was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/squirrel-sql/1-stable/#{version}/squirrel-sql-#{version}-MACOSX-install.jar"
  appcast 'https://sourceforge.net/projects/squirrel-sql/rss?path=/1-stable',
          checkpoint: '2bf738ab989998ed5a58b9239464120247b7adeba9ed3aff1acb9bb7b4113123'
  name 'SQuirrel SQL'
  homepage 'http://www.squirrelsql.org/'

  container type: :naked

  installoptions = "#{staged_path}/install-options.xml"

  preflight do
    # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
    File.open(installoptions, 'w') do |f|
      f.print <<-EOS.undent
        <?xml version="1.0" encoding="UTF-8" standalone="no"?>
        <AutomatedInstallation langpack="eng">
        <com.izforge.izpack.panels.HelloPanel id="UNKNOWN (com.izforge.izpack.panels.HelloPanel)"/>
        <com.izforge.izpack.panels.HTMLInfoPanel id="UNKNOWN (com.izforge.izpack.panels.HTMLInfoPanel)"/>
        <com.izforge.izpack.panels.TargetPanel id="UNKNOWN (com.izforge.izpack.panels.TargetPanel)">
        <installpath>#{appdir}/SQuirreLSQL.app</installpath>
        </com.izforge.izpack.panels.TargetPanel>
        <com.izforge.izpack.panels.PacksPanel id="UNKNOWN (com.izforge.izpack.panels.PacksPanel)">
        <pack index="0" name="Base" selected="true"/>
        <pack index="1" name="Standard" selected="true"/>
        <pack index="2" name="Optional Plugin - Greenplum" selected="true"/>
        <pack index="3" name="Optional Plugin - WIKI table configurations" selected="true"/>
        <pack index="4" name="Optional Plugin - Swing Violation Dedector" selected="true"/>
        <pack index="5" name="Optional Plugin - Multi Source" selected="true"/>
        <pack index="6" name="Optional Plugin - Vertica" selected="true"/>
        <pack index="7" name="Optional Plugin - Data import" selected="true"/>
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
        <pack index="25" name="Optional Plugin - Internationalization " selected="true"/>
        <pack index="26" name="Optional Translation - Brazilian Portuguese" selected="true"/>
        <pack index="27" name="Optional Translation - Bulgarian" selected="true"/>
        <pack index="28" name="Optional Translation - Czech" selected="true"/>
        <pack index="29" name="Optional Translation - Simplified Chinese" selected="true"/>
        <pack index="30" name="Optional Translation - French" selected="true"/>
        <pack index="31" name="Optional Translation - German" selected="true"/>
        <pack index="32" name="Optional Translation - Italian" selected="true"/>
        <pack index="33" name="Optional Translation - Japanese" selected="true"/>
        <pack index="34" name="Optional Translation - Korean" selected="true"/>
        <pack index="35" name="Optional Translation - Polish" selected="true"/>
        <pack index="36" name="Optional Translation - Russian" selected="true"/>
        <pack index="37" name="Optional Translation - Spanish" selected="true"/>
        </com.izforge.izpack.panels.PacksPanel>
        <com.izforge.izpack.panels.InstallPanel id="UNKNOWN (com.izforge.izpack.panels.InstallPanel)"/>
        <com.izforge.izpack.panels.FinishPanel id="UNKNOWN (com.izforge.izpack.panels.FinishPanel)"/>
        </AutomatedInstallation>
      EOS
    end
  end

  postflight do
    system_command 'java', args: ['-jar', "#{staged_path}/squirrel-sql-#{version}-MACOSX-install.jar", installoptions.to_s]
  end

  uninstall_postflight do
    system_command 'java', args: ['-jar', "#{appdir}/SQuirreLSQL.app/Uninstaller/uninstaller.jar", '-f', '-c']
  end

  zap delete: '~/.squirrel-sql'

  caveats do
    depends_on_java('6+')
  end
end
