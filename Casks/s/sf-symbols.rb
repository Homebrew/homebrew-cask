cask "sf-symbols" do
  on_big_sur :or_older do
    version "4"
    sha256 "479b66ce7eb308ca0eff826675325e11e7932fcca407d065261822be5c2ec8cb"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "5.1"
    sha256 "ec720e940629407cf2a0c856d89b70ab64e8afca23b389931e35237cc28a30ce"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura do
    version "6"
    sha256 "846e90ca274d56d234a573baf7ca0656c1b86b0cbc5d6af6ee713261250c84fa"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "7.2,119"
    sha256 :no_check # required as upstream package is updated in-place

    livecheck do
      url :homepage
      regex(%r{href=.*?/SF[._-]Symbols[._-]v?(\d+(?:\.\d+)*)\.dmg}i)
      strategy :page_match do |page, regex|
        major_version = page[regex, 1]
        next if major_version.blank?

        cask = CaskLoader.load(__FILE__)
        download_url = "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{major_version}.dmg"
        Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask:, url: download_url)[:matches].values
      end
    end
  end

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version.major}.dmg"
  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/sf-symbols/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.pkg.SFSymbols"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
