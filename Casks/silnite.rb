cask "silnite" do
  version "7,2022.06"
  sha256 "f4123d7063f9d48747581fda77605b5141dc16adcb3a17e3930ffaacc375767b"

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
