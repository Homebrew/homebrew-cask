cask "fabfilter-pro-r" do
  version "1.13"
  sha256 "bcc47bbd64da1f0302c88d840cf1aba72c3eeb2263bf3564a8b61464b383dcf7"

  url "https://download.fabfilter.com/ffpror#{version.no_dots}.dmg"
  name "FabFilter Pro-R"
  desc "Reverb plug-in"
  homepage "https://www.fabfilter.com/products/pro-r-reverb-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffpror(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-R #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-R.#{version.major}"
end
