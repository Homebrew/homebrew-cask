cask "dbeaver-enterprise" do
  version "21.2.0"
  sha256 "2fc2d2a91544a9559876a0849656290b02bab6d944b458eda82021184b11c914"

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
