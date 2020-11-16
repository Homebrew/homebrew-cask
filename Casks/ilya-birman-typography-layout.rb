cask "ilya-birman-typography-layout" do
  version "3.7"
  sha256 "b21c86951038a5940e3fbab1f2b4e17f477a143eece9117670dea6a439b348d3"

  url "https://ilyabirman.ru/projects/typography-layout/download/ilya-birman-typolayout-#{version}-mac.dmg"
  name "Ilya Birman typography layout"
  desc "Typography Keyboard Layout"
  homepage "https://ilyabirman.ru/projects/typography-layout/"

  artifact \
    "Install Ilya Birman Typography Layout.app/Contents/Resources/Layout/Ilya Birman Typography Layout.bundle",
    target: Pathname.new(File.expand_path("~")).join("Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle")

  caveats <<~EOS
    To enable new keyboard layouts, you must add them manually in System Preferences. More info on #{homepage}.
  EOS
end
