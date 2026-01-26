cask "smultron" do
  version "14.4.5,14450"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.peterborgapps.com/downloads/Smultron#{version.major}.zip"
  name "Smultron"
  desc "General-purpose text editor"
  homepage "https://www.peterborgapps.com/smultron/"

  livecheck do
    url "https://www.peterborgapps.com/updates/smultron#{version.major}.plist"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='version']"]&.next_element&.text
      build = xml.elements["//key[text()='build']"]&.next_element&.text
      next if version.blank? || build.blank?

      "#{version.strip},#{build.strip}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Smultron.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.Smultron#{version.major}",
    "~/Library/Containers/com.peterborgapps.Smultron#{version.major}",
  ]
end
