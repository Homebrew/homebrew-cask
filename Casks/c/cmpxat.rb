cask "cmpxat" do
  version "4,2023.07"
  sha256 "42e92e0f105872c0e90252908747eb407bf22cd07d3f1791923933c3474d603a"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.major}.zip"
  name "cmpxat"
  desc "Command tool to compare all the extended attributes (xattrs) between two files"
  homepage "https://eclecticlight.co/xattred-sandstrip-xattr-tools/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/cmpxat[^"' >]*?\.zip[^>]*?>\s*cmpxat\s+v?(\d+(?:\.\d+)*[ab]?)[^a-z)]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "cmpxat#{version.major}/cmpxatInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.cmpxatInstaller"

  # No zap stanza required
end
