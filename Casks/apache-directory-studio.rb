cask "apache-directory-studio" do
  version "2.0.0.v20210717-M17"
  sha256 "1f024ed122256ec69cc148ff628ed3103f47e95d3cdd0b66ed806afcc68d29ec"

  url "https://www.apache.org/dyn/closer.cgi?path=/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name "Apache Directory Studio"
  desc "Eclipse-based LDAP browser and directory client"
  homepage "https://directory.apache.org/studio/"

  livecheck do
    url "https://archive.apache.org/dist/directory/studio/"
    regex(%r{href="(\d+(?:\.\d+)*.*)/"}i)
  end

  app "ApacheDirectoryStudio.app"

  zap trash: "~/.ApacheDirectoryStudio"

  caveats do
    depends_on_java "8+"
    <<~EOS
      You might need to configure Java version by editing the following file:
        #{appdir}/ApacheDirectoryStudio.app/Contents/Eclipse/ApacheDirectoryStudio.ini
    EOS
  end
end
