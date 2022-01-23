cask "au-lab" do
  version "2.3"
  sha256 :no_check

  url "https://www.apple.com/apple-music/apple-digital-masters/docs/au_lab.zip"
  name "AU Lab"
  desc "Digital audio mixing application"
  homepage "https://www.apple.com/apple-music/apple-digital-masters/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "AU Lab.app"
end
