cask "popchar" do
  version "11.0"
  sha256 "ef47095bd1f8aac4419f10d23ed071b9b8475bb13322cc9c1ca91f54461002b7"

  url "https://storage.ergonis.com/apps/production/popchar/archive/PopChar_#{version.no_dots}.zip"
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  livecheck do
    url "https://update.ergonis.com/vck/popcharx.xml"
    strategy :xml do |xml|
      xml.elements["//Program_Info/Program_Version"]&.text&.strip
    end
  end

  depends_on macos: :ventura

  app "PopChar.app"

  uninstall quit: "com.macility.popchar3"

  zap trash: [
    "~/Library/Application Support/PopChar",
    "~/Library/Caches/com.macility.popchar3",
    "~/Library/HTTPStorages/com.macility.popchar3",
    "~/Library/Preferences/com.macility.popchar3.plist",
  ]
end
