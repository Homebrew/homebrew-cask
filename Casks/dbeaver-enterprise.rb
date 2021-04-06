cask "dbeaver-enterprise" do
  version "21.0.0"
  sha256 "f5ef25122d8bee607f4343d48763acc7acbb2b158c6b8cf33cb93a3edc5943f0"

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
