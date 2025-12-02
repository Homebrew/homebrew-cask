cask "alfred@prerelease" do
  version "5.7.2,2311"
  sha256 "b5faaf601c6296151796ba4df56e32380b2e20f9ed1bc04d330e57acf996f750"

  url "https://cachefly.alfredapp.com/Alfred_#{version.csv.first}_#{version.csv.second}.tar.gz"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://www.alfredapp.com/"

  livecheck do
    url "https://www.alfredapp.com/app/update#{version.major}/prerelease.xml"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='version']"]&.next_element&.text
      build = xml.elements["//key[text()='build']"]&.next_element&.text
      next if version.blank? || build.blank?

      "#{version.strip},#{build.strip}"
    end
  end

  auto_updates true
  conflicts_with cask: "alfred"

  app "Alfred #{version.major}.app"

  uninstall quit:       "com.runningwithcrayons.Alfred",
            login_item: "Alfred#{version.major}"

  zap trash: [
    "~/Library/Application Support/Alfred",
    "~/Library/Caches/com.runningwithcrayons.Alfred",
    "~/Library/Cookies/com.runningwithcrayons.Alfred.binarycookies",
    "~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist",
    "~/Library/Preferences/com.runningwithcrayons.Alfred.plist",
    "~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState",
  ]
end
