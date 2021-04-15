cask "netbeans-php" do
  version "12.3"
  sha256 "b8662b2b03b96a720c3e3189290cba95b0462df48435ba6f8ef7e8f8d9f26562"

  url "https://download.netbeans.org/netbeans/#{version}/final/bundles/netbeans-#{version}-php-macosx.dmg"
  name "NetBeans IDE for PHP"
  homepage "https://netbeans.org/"

  livecheck do
    url "https://netbeans.org/downloads/"
    strategy :page_match
    regex(/NetBeans\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "NetBeans #{version}.pkg"

  uninstall delete: "/Applications/NetBeans"
end
