cask "dbeaver-enterprise" do
  version "21.1.0"
  sha256 "1f4861ad0c7f93559c8774b4a1a8de9e9f6d8263ecfefec9c88b2b317b85ef08"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverEE.app"

  caveats do
    depends_on_java "8+"
  end
end
