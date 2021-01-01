cask "dbeaver-enterprise" do
  version "7.3.0"
  sha256 "75e778c353d07fa02ed845fbb4f04afaa8d0462c46ac6b8e3a062349935fd873"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name "DBeaver Enterprise Edition"
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
