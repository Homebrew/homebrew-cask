cask "duplicate-annihilator-for-photos" do
  version "9.0.0,1"
  sha256 :no_check

  url "https://brattoo.com/propaganda/downloadDap.php"
  name "Duplicate Annihilator for Photos"
  homepage "https://brattoo.com/propaganda/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Duplicate Annihilator for Photos.app"
end
