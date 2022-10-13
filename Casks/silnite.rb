cask "silnite" do
  version "8,2022.10"
  sha256 "0e4d09c309ed2f40ffe15f792c9c4c2a709ac98150d2fea0a6891d0c5dbcf430"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/silnite#{version.csv.first}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "silnite"
  desc "Checks EFI firmware and security data file updates"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/silnite[._-]?v?(\d+(?:\.\d+)*\w?)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "silnite#{version.csv.first}/silniteInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.silniteInstaller"
end
