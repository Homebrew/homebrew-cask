cask "qt-design-studio" do
  version "4.7.0"
  sha256 "4ad93485359621f15cee13bf3f059cdecfc25b52260dcf372500321858332ed2"

  url "https://git.qt.io/api/v4/projects/4586/packages/generic/design_studio_opensource/#{version}/qt-designstudio-opensource-#{version}.dmg"
  name "Qt Design Studio"
  desc "UI design and development tool"
  homepage "https://www.qt.io/product/ui-design-tools"

  # in the wiki page, the version is in the format "Qt Design Studio 2.0.0"
  livecheck do
    url "https://wiki.qt.io/QtDesignStudio"
    regex(/Qt Design Studio (\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "Qt Design Studio.app"

  zap trash: [
    "~/Library/Preferences/org.qt-project.qtdesignstudio.plist",
    "~/Library/Saved Application State/org.qt-project.qtdesignstudio.savedState",
  ]
end
