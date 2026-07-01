cask "gnome" do
  version "1.15,2"
  sha256 :no_check

  url "https://lexfriedman.com/gnome/GAsInGnome.zip"
  name "Gnome"
  desc "Menu bar GIF search and creation tool"
  homepage "https://lexfriedman.com/gnome/"

  livecheck do
    url "https://lexfriedman.com/gnome/update.txt"
    regex(/new\s*in\s*v?(\d+(?:\.\d+)+)\s*\((\d*)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}#{",#{match[1]}" if match[1]}" }
    end
  end

  depends_on macos: :sequoia

  app "Gnome.app"

  zap trash: [
    "~/Library/Application Support/Gnome",
    "~/Library/Caches/com.lexfriedman.G-As-In-Gnome",
    "~/Library/HTTPStorages/com.lexfriedman.G-As-In-Gnome",
    "~/Library/Preferences/com.lexfriedman.G-As-In-Gnome.plist",
  ]
end
