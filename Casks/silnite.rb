cask "silnite" do
  version "10,2023.07"
  sha256 "2cf56007a9e0f4d420cc137afeb6811ded0918d74d49552e684218b7127cc976"

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

  # No zap stanza required
end
