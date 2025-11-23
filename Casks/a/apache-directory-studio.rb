cask "apache-directory-studio" do
  version "2.0.0.v20210717-M17"
  sha256 "1f024ed122256ec69cc148ff628ed3103f47e95d3cdd0b66ed806afcc68d29ec"

  url "https://www.apache.org/dyn/closer.lua?path=directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  name "Apache Directory Studio"
  desc "Eclipse-based LDAP browser and directory client"
  homepage "https://directory.apache.org/studio/"

  livecheck do
    url :url
    regex(%r{href=["']?v?(\d+(?:\.\d+)+[^/]*?)/?["' >]}i)
  end

  app "ApacheDirectoryStudio.app"

  zap trash: "~/.ApacheDirectoryStudio"

  caveats do
    depends_on_java "11+"
    requires_rosetta
    <<~EOS
      To set the Java VM to use:

        https://directory.apache.org/studio/faqs.html#how-to-set-the-java-vm-to-use
    EOS
  end
end
