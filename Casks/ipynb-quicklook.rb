cask "ipynb-quicklook" do
  version "0.1.2"
  sha256 "92b573acf9d28cd9adf594dc8b6144d4ab3273df8a1561b704fd7fa66d1058bd"

  url "https://github.com/tuxu/ipynb-quicklook/releases/download/v#{version}/ipynb-quicklook.qlgenerator.zip"
  name "ipynb-quicklook"
  homepage "https://github.com/tuxu/ipynb-quicklook"

  livecheck do
    url :url
    strategy :github_latest
  end

  qlplugin "ipynb-quicklook.qlgenerator"
end
