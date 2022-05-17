cask "squirrelsql" do
  version "4.4.0"
  sha256 "857733642d2501fc157c30085adfbbf4e63dc37199b20bb8363007b6c0a78a71"

  url "https://downloads.sourceforge.net/squirrel-sql/1-stable/#{version}/squirrel-sql-#{version}-MACOSX-install.jar",
      verified: "sourceforge.net/squirrel-sql/"
  name "SQuirrel SQL"
  desc "Graphical Java program for viewing the structure of a JDBC compliant database"
  homepage "http://www.squirrelsql.org/"

  container type: :naked

  postflight do
    system_command "/usr/bin/java",
                   args: ["-jar", "#{staged_path}/squirrel-sql-#{version}-MACOSX-install.jar"]
  end

  uninstall_preflight do
    system_command "/usr/bin/java",
                   args: ["-jar", "#{appdir}/SQuirreLSQL.app/Uninstaller/uninstaller.jar", "-f", "-c"]
  end

  uninstall delete: "#{appdir}/SQuirreLSQL.app"

  zap trash: "~/.squirrel-sql"

  caveats do
    depends_on_java "8+"
  end
end
