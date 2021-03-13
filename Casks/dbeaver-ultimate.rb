cask "dbeaver-ultimate" do
  version "21.0.0"
  sha256 "cc2df3f644432428adde85c188cf7c2edb9a15988ebce52d48f989684e608fd0"

  url "https://dbeaver.com/files/#{version}/dbeaver-ue-#{version}-macos.dmg"
  name "DBeaver Ultimate Edition"
  desc "One tool for all databases"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverUltimate.app"

  caveats do
    depends_on_java "8+"
  end
end
