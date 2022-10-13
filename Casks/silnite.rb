cask "silnite" do
  version "8a,2022.10"
  sha256 "8a301e41f4a20bf1243d943d4890303eaf1c4bcc26c3067d0a353ea11bbf5a1b"

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

  # Revert to #{version.csv.first} with next release
  pkg "silnite#{version.csv.first.chomp("a")}/silniteInstaller.pkg"

  uninstall pkgutil: "co.eclecticlight.pkg.silniteInstaller"
end
