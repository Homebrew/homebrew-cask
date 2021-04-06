cask "mendeley" do
  version "1.19.8"
  sha256 "5f6b9fe7a04b6b12a81f4300864b243bbe4e4ec31aa71f6b260be519493b1d44"

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name "Mendeley Desktop"
  desc "Research management tool"
  homepage "https://www.mendeley.com/reference-management/mendeley-desktop"

  livecheck do
    url "https://www.mendeley.com/autoupdates/installer/Mac-x64/stable-incoming"
    strategy :header_match
  end

  app "Mendeley Desktop.app"
end
