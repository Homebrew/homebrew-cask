cask "alisma" do
  version "4,2023.07"
  sha256 "159e543e92cc8b97f2375b06834d51ef4893e9213d2c490822cf41dcbbfd930a"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.major}.zip"
  name "Alisma"
  desc "Command tool to create Finder aliases, and to resolve them to full paths"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/alisma[^"' >]*?\.zip[^>]*?>\s*alisma\s+v?(\d+(?:\.\d+)*[ab]?)[^a-z)]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "alisma#{version.major}/alismaInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.alismaInstaller"

  # No zap stanza required
end
