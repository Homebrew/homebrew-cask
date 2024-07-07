cask "showhiddenfiles" do
  version "2.0.6,62"
  sha256 :no_check

  url "https://gotoes.org/sales/ShowHiddenFilesMacOSX/ShowAllFiles.app.zip"
  name "ShowHiddenFiles"
  desc "Reveals hidden files in Finder"
  homepage "https://gotoes.org/sales/ShowHiddenFilesMacOSX/How_To_Show_Hidden_Files.php"

  deprecate! date: "2024-07-06", because: :unmaintained

  app "ShowHiddenFiles.app"

  caveats do
    requires_rosetta
  end
end
